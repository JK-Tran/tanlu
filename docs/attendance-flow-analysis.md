<!-- # Phân tích Điểm danh (Attendance) — cập nhật 2026-06-19

> Trạng thái code sau khi hoàn thành **student pagination** và **Phase 2 attendance (draft → commit)**.  
> Mục tiêu refactor tiếp: đồng bộ roster HS với student feature, dọn use case / repository.

---

## 1. Danh sách điểm danh có giống danh sách Student không?

### Giống

| | Student page | Attendance page |
|---|--------------|-----------------|
| Nguồn roster | Firestore `students` where `classId` | **Cùng collection** |
| Entity HS | `Student` | `Student` (trong bloc state) |
| Sort | `fullName` + doc id | Kế thừa thứ tự roster |
| `classId` | Từ teacher login | Từ teacher login |

### Khác (quan trọng)

| | Student page | Attendance page |
|---|--------------|-----------------|
| **Mục đích** | Xem / tìm / lọc HS | Điểm danh **toàn lớp trong 1 ngày** |
| **Pagination UI** | Có — 10 HS/trang, scroll load more | **Không** — cần **tất cả HS** trên 1 màn |
| **Pagination data** | `GetAllStudentByClassIdUseCase` + cursor | Phải **loop hết các trang** rồi merge |
| **Dữ liệu thêm** | Stats Tổng/Nam/Nữ | `attendances` + `leave_requests` + `attendance_sessions` theo **ngày** |
| **State** | `List<Student>` | `students[]` + `attendances[]` (1:1 theo `studentId`) |

**Kết luận:** Cùng nguồn HS, **không** dùng chung bloc/use case UI. Attendance chỉ **borrow** `StudentRepository.getStudentsByClassId` (loop đến hết) rồi merge với điểm danh ngày.

```
students (Firestore)          attendances (Firestore, theo ngày)
        │                              │
        └──────── merge ───────────────┘
                    │
            GetDailyAttendanceUseCase
                    │
         students[] + attendances[] (cùng length, cùng studentId)
```

---

## 2. Trạng thái mỗi ngày của từng học sinh

Mỗi HS mỗi ngày = **1 bản ghi logic** `Attendance` (có thể chưa ghi Firestore).

### Firestore `attendances`

- **Doc ID:** `{studentId}_{yyyyMMdd}` (từ `date` dạng `yyyy-MM-dd`)
- **Query:** `classId == X AND date == 'yyyy-MM-dd'`

| Field | Ghi chú |
|-------|---------|
| `studentId`, `classId`, `date` | `date` luôn `yyyy-MM-dd` (không `dd/MM/yyyy`) |
| `status` | Xem bảng dưới |
| `checkInTime` | Set khi `present` |
| `checkOutTime` | Có model, chưa dùng UI |
| `note` | Lý do nghỉ (đơn phép) |
| `recordedBy` | Teacher id |
| `createdAt`, `updatedAt` | Timestamp |

### Giá trị `status`

| Status | Nghĩa | Nguồn |
|--------|-------|-------|
| `not_marked` | Chưa điểm danh | Default local (chưa có doc Firestore) |
| `present` | Có mặt | GV chọn trên sheet |
| `late` | Đi trễ | GV chọn |
| `absent_unexcused` | Vắng không phép | Auto khi **Lưu** mà còn `not_marked` |
| `absent_excused` | Nghỉ có phép | Đơn `approved` hoặc GV chọn |

### Phiên điểm danh `attendance_sessions`

- **Doc ID:** `{classId}_{yyyyMMdd}`
- `isCheckInCompleted: true` sau lần **Lưu điểm danh** đầu tiên
- Sau khi chốt → có thể **Cập nhật** bảng điểm danh (`updateDailyAttendance`)

### Merge khi fetch (`GetDailyAttendanceUseCase`)

```
Với mỗi student trong lớp:
  1. Có doc attendances hôm nay     → dùng bản ghi Firestore
  2. Không có doc + leave approved  → absent_excused (local)
  3. Không có doc                   → not_marked (local)
```

---

## 3. Luồng ghi Firestore — draft rồi mới commit

### Đã implement (Phase 2 ✅)

| Hành động UI | Event | Firestore |
|--------------|-------|-----------|
| Mở màn / đổi ngày | `FetchDailyAttendance` | **Đọc** students + attendances + leaves + session |
| Chọn trạng thái → Đồng ý | `MarkStudentAttendanceEvent` | **Không ghi** — chỉ `state.attendances` + `hasUnsavedChanges` |
| **Lưu điểm danh** | `CompleteAttendanceSessionEvent` | **Batch ghi** session + toàn bộ attendances; `not_marked` → `absent_unexcused` |
| **Cập nhật** (đã chốt) | `UpdateDailyAttendanceEvent` | **Batch merge** attendances |
| Duyệt / từ chối phép | `SubmitLeaveDecisionEvent` | Ghi `leave_requests` + nếu đồng ý → `attendances` `absent_excused` |

### Sequence — điểm danh

```
FetchDailyAttendance
  → load ALL students (paginated loop)
  → load attendances + leave_requests + session (theo ngày)
  → merge → AttendanceBloc state

GV đánh dấu từng HS
  → MarkStudentAttendanceEvent (local draft)

GV bấm「Lưu điểm danh」
  → SubmitDailyAttendanceUseCase
  → batch: attendance_sessions + attendances/*

GV sửa sau khi chốt
  → UpdateDailyAttendanceEvent → updateDailyAttendance (cùng batch write)
```

### Đơn xin phép (`leave_requests`)

- Parent / debug FAB tạo doc `status: pending`
- `StreamLeaveRequestsUseCase` → realtime tab Nghỉ phép
- GV **Đồng ý** → `approved` + ghi attendance `absent_excused`
- GV **Từ chối** → `rejected` (không đổi attendance nếu chưa mark)

---

## 4. Firestore collections

| Collection | Doc ID | Mục đích |
|------------|--------|----------|
| `students` | `student-*` | Roster lớp (shared với feature Student) |
| `attendances` | `{studentId}_{yyyyMMdd}` | Trạng thái HS theo ngày |
| `attendance_sessions` | `{classId}_{yyyyMMdd}` | Đã chốt điểm danh chưa |
| `leave_requests` | auto | Đơn xin nghỉ theo ngày |

### Index cần có (attendance)

- `attendances`: `classId` + `date`
- `attendances`: `studentId` + `date` (history)
- `leave_requests`: `classId` + `date`

---

## 5. Use cases — gọn, không dư

| Use case | Vai trò | Ghi chú |
|----------|---------|---------|
| `GetDailyAttendanceUseCase` | Fetch + merge ngày | Cần loop hết trang students |
| `SubmitDailyAttendanceUseCase` | Chốt lần đầu | Batch write |
| `UpdateDailyAttendanceUseCase` | Sửa sau chốt | Validate session đã completed |
| `SubmitLeaveDecisionUseCase` | Duyệt đơn | Ghi leave + attendance |
| `StreamLeaveRequestsUseCase` | Realtime tab phép | Giữ stream |
| `GetStudentHistoryUseCase` | Lịch sử 1 HS | **Chưa wire UI** — giữ cho student detail |

### Repository (`AttendanceRepository`)

Đủ 7 method — **không** thêm `markStudentAttendance` / `streamDailyAttendance` (đã xóa đúng hướng).

### Không dùng cho attendance UI

- `GetAllStudentByClassIdUseCase` — dành load-more **từng trang** trên Student page
- Attendance gọi `StudentRepository` trực tiếp + **loop cursor** để lấy full roster

---

## 6. Bug / việc còn lại (refactor checklist)

### P0 — Đang lỗi

- [x] `getStudentsByClassId` trả `PagedList` nhưng cast `List<Student>` → **runtime error / chỉ 10 HS**
- [ ] Fix: `_loadAllStudentsByClassId` loop đến `hasMore == false`

### P1 — Đồng bộ với student

- [ ] Dùng chung `PagingConstants.itemsPerPage` khi loop
- [ ] Đảm bảo cùng `classId` teacher login

### P2 — Product

- [ ] Date picker (hiện chỉ `DateTime.now()`)
- [ ] Tên lớp động (đang hardcode `Lớp Mầm 2 - SUNFLOWER`)
- [ ] Wire `GetStudentHistoryUseCase` vào student detail
- [ ] Xóa `LeaveTestFab` khi có parent app thật
- [ ] Stats tab: thêm đếm `late` nếu cần

### P3 — Firestore cleanup

- [ ] Xóa doc rác `student-*_null` (data cũ trước Phase 2)

---

## 7. So sánh kiến trúc Student vs Attendance

```
STUDENT (browse)
  StudentPage → StudentBloc
    → GetAllStudentByClassIdUseCase (BaseLoadMoreUseCase)
    → StudentRepository.getStudentsByClassId(limit, cursor)
    → UI: 10/trang, load more

ATTENDANCE (mark all)
  AttendancePage → AttendanceBloc
    → GetDailyAttendanceUseCase
        → StudentRepository.getStudentsByClassId (loop ALL pages)
        → AttendanceRepository.getDailyAttendance / getLeaveRequests / getSession
        → merge in use case
    → UI: full list, draft local, save batch
```

---

## 8. Format ngày

| Lớp | Format | Ví dụ |
|-----|--------|-------|
| Firestore `date` | `yyyy-MM-dd` | `2026-06-19` |
| Doc ID suffix | `yyyyMMdd` | `20260619` |
| UI header | `dd/MM/yyyy` | `19/06/2026` |
| `checkInTime` | ISO Timestamp | có giờ |

---

## 9. Thứ tự refactor đề xuất

1. **Fix load full roster** trong `GetDailyAttendanceUseCase`
2. Test: lớp > 10 HS — đủ danh sách điểm danh
3. Date picker + class name từ user/class doc
4. Student detail ← `GetStudentHistoryUseCase`
5. Dọn debug FAB + doc rác Firestore -->
