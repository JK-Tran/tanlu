import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/mapper/attendance_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/mapper/attendance_session_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/mapper/leave_request_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/sources/attendance_firebase_source.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/entity/daily_attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@LazySingleton(as: AttendanceRepository)
class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRepositoryImpl(
    this._firebaseSource,
    this._studentRepository,
    this._attendanceMapper,
    this._sessionMapper,
    this._leaveRequestMapper,
  );

  final AttendanceFirebaseSource _firebaseSource;
  final StudentRepository _studentRepository;
  final AttendanceDataMapper _attendanceMapper;
  final AttendanceSessionDataMapper _sessionMapper;
  final LeaveRequestDataMapper _leaveRequestMapper;

  @override
  Future<DailyAttendance> getDailyAttendance(
    String classId,
    String date,
  ) async {
    final parsedDate = DateTimeUtils.parseDateTimeDateOnly(date);

    final results = await Future.wait([
      _studentRepository.getStudentsByClassId(classId: classId),
      getAttendances(classId, date),
      getLeaveRequests(classId, date),
      getSession(classId, date),
    ]);

    return _mergeDaily(
      students: results[0] as List<Student>,
      existingAttendances: results[1] as List<Attendance>,
      leaveRequests: results[2] as List<LeaveRequest>,
      session: results[3] as AttendanceSession?,
      classId: classId,
      date: parsedDate,
    );
  }

  DailyAttendance _mergeDaily({
    required List<Student> students,
    required List<Attendance> existingAttendances,
    required List<LeaveRequest> leaveRequests,
    required AttendanceSession? session,
    required String classId,
    required DateTime? date,
  }) {
    final attendanceMap = {
      for (final a in existingAttendances) a.studentId: a,
    };

    final attendances = students.map((student) {
      if (attendanceMap.containsKey(student.id)) {
        return attendanceMap[student.id]!;
      }

      final hasApprovedLeave = leaveRequests.any(
        (req) => req.studentId == student.id && req.status == 'approved',
      );

      return Attendance(
        studentId: student.id,
        classId: classId,
        date: date,
        status: hasApprovedLeave ? 'absent_excused' : 'not_marked',
      );
    }).toList();

    return DailyAttendance(
      students: students,
      attendances: attendances,
      leaveRequests: leaveRequests,
      session: session,
    );
  }

  @override
  Future<List<Attendance>> getAttendances(String classId, String date) async {
    final data = await _firebaseSource.getAttendances(classId, date);
    return _attendanceMapper.mapToListEntity(data);
  }

  @override
  Future<AttendanceSession?> getSession(String classId, String date) async {
    final data = await _firebaseSource.getSession(classId, date);
    if (data == null) return null;
    return _sessionMapper.mapToEntity(data);
  }

  @override
  Future<List<LeaveRequest>> getLeaveRequests(
    String classId,
    String date,
  ) async {
    final data = await _firebaseSource.getLeaveRequests(classId, date);
    return _leaveRequestMapper.mapToListEntity(data);
  }

  @override
  Stream<List<LeaveRequest>> streamLeaveRequests(String classId, String date) {
    return _firebaseSource
        .streamLeaveRequests(classId, date)
        .map(_leaveRequestMapper.mapToListEntity);
  }

  @override
  Future<void> submitAttendances({
    required AttendanceSession session,
    required List<Attendance> attendances,
  }) async {
    await _firebaseSource.submitAttendances(
      _sessionMapper.mapToData(session),
      _attendanceMapper.mapToListData(attendances),
    );
  }

  @override
  Future<void> updateAttendances({
    required List<Attendance> attendances,
  }) async {
    await _firebaseSource.updateAttendances(
      _attendanceMapper.mapToListData(attendances),
    );
  }

  @override
  Future<void> submitCompleteCheckOut({
    required AttendanceSession session,
    required List<Attendance> attendances,
  }) async {
    await _firebaseSource.submitCompleteCheckOut(
      _sessionMapper.mapToData(session.copyWith(isCheckOutCompleted: true)),
      _attendanceMapper.mapToListData(attendances),
    );
  }

  @override
  Future<void> submitLeaveDecision({
    required LeaveRequest request,
    required bool isApproved,
    required String reviewedBy,
    required bool updateAttendance,
  }) async {
    final status = isApproved ? 'approved' : 'rejected';
    await _firebaseSource.submitLeaveDecision(
      _leaveRequestMapper.mapToData(request),
      status,
      reviewedBy,
      updateAttendance,
    );
  }

  @override
  Future<List<Attendance>> getAttendanceHistory({
    required String studentId,
    required String startDate,
    required String endDate,
  }) async {
    final data = await _firebaseSource.getAttendanceHistory(
      studentId,
      startDate,
      endDate,
    );
    return _attendanceMapper.mapToListEntity(data);
  }
}
