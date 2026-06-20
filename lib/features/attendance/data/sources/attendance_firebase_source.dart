import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_data.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_session_data.dart';
import 'package:tanlu_management/features/attendance/data/model/leave_request_data.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

@lazySingleton
class AttendanceFirebaseSource {
  AttendanceFirebaseSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<List<AttendanceData>> getAttendances(
    String classId,
    String date,
  ) async {
    final path = 'attendances?classId=$classId&date=$date';

    final snapshot = await FirebaseLogger.list(
      path,
      () => _firestore
          .collection('attendances')
          .where('classId', isEqualTo: classId)
          .where('date', isEqualTo: date)
          .get(),
      requestMeta: {'classId': classId, 'date': date},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => AttendanceData.fromJson(doc.toModelJson))
        .toList();
  }

  Future<AttendanceSessionData?> getSession(String classId, String date) async {
    final docId = _sessionDocId(classId, date);
    final path = 'attendance_sessions/$docId';

    final doc = await FirebaseLogger.get(
      path,
      () => _firestore.collection('attendance_sessions').doc(docId).get(),
      dataExtractor: (snap) => snap.toModelJson,
    );

    final json = doc.toModelJson;
    if (json == null) return null;
    return AttendanceSessionData.fromJson(json);
  }

  Future<List<LeaveRequestData>> getLeaveRequests(
    String classId,
    String date,
  ) async {
    final path = 'leave_requests?classId=$classId&date=$date';

    final snapshot = await FirebaseLogger.list(
      path,
      () => _firestore
          .collection('leave_requests')
          .where('classId', isEqualTo: classId)
          .where('date', isEqualTo: date)
          .get(),
      requestMeta: {'classId': classId, 'date': date},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => LeaveRequestData.fromJson(doc.toModelJson))
        .toList();
  }

  Stream<List<LeaveRequestData>> streamLeaveRequests(
    String classId,
    String date,
  ) {
    return _firestore
        .collection('leave_requests')
        .where('classId', isEqualTo: classId)
        .where('date', isEqualTo: date)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => LeaveRequestData.fromJson(doc.toModelJson))
              .toList(),
        );
  }

  Future<void> submitAttendances(
    AttendanceSessionData session,
    List<AttendanceData> attendances,
  ) async {
    final classId = session.classId ?? '';
    final date = session.date ?? '';
    final sessionId = _sessionDocId(classId, date);
    final path = 'batch/attendance_sessions/$sessionId + attendances';

    await FirebaseLogger.write(
      'BATCH',
      path,
      {
        'sessionId': sessionId,
        'session': session.toJson(),
        'attendanceCount': attendances.length,
      },
      () async {
        final batch = _firestore.batch();

        batch.set(
          _firestore.collection('attendance_sessions').doc(sessionId),
          {...session.toJson(), 'updatedAt': FieldValue.serverTimestamp()},
          SetOptions(merge: true),
        );

        for (final attendance in attendances) {
          final studentId = attendance.studentId;
          final attendanceDate = attendance.date;
          if (studentId == null ||
              studentId.isEmpty ||
              attendanceDate == null ||
              attendanceDate.isEmpty) {
            continue;
          }

          batch.set(
            _firestore
                .collection('attendances')
                .doc(_attendanceDocId(studentId, attendanceDate)),
            {...attendance.toJson(), 'updatedAt': FieldValue.serverTimestamp()},
            SetOptions(merge: true),
          );
        }

        await batch.commit();
      },
    );
  }

  Future<void> updateAttendances(List<AttendanceData> attendances) async {
    final path = 'batch/attendances';

    await FirebaseLogger.write(
      'BATCH',
      path,
      {'attendanceCount': attendances.length},
      () async {
        final batch = _firestore.batch();

        for (final attendance in attendances) {
          final studentId = attendance.studentId;
          final attendanceDate = attendance.date;
          if (studentId == null ||
              studentId.isEmpty ||
              attendanceDate == null ||
              attendanceDate.isEmpty) {
            continue;
          }

          batch.set(
            _firestore
                .collection('attendances')
                .doc(_attendanceDocId(studentId, attendanceDate)),
            {...attendance.toJson(), 'updatedAt': FieldValue.serverTimestamp()},
            SetOptions(merge: true),
          );
        }

        await batch.commit();
      },
    );
  }

  Future<void> submitCompleteCheckOut(
    AttendanceSessionData session,
    List<AttendanceData> attendances,
  ) async {
    final classId = session.classId ?? '';
    final date = session.date ?? '';
    final sessionId = _sessionDocId(classId, date);
    final path = 'batch/attendance_sessions/$sessionId/checkout';

    await FirebaseLogger.write(
      'BATCH',
      path,
      {
        'sessionId': sessionId,
        'isCheckOutCompleted': true,
        'attendanceCount': attendances.length,
      },
      () async {
        final batch = _firestore.batch();

        batch.set(
          _firestore.collection('attendance_sessions').doc(sessionId),
          {
            ...session.toJson(),
            'isCheckOutCompleted': true,
            'updatedAt': FieldValue.serverTimestamp(),
          },
          SetOptions(merge: true),
        );

        for (final attendance in attendances) {
          final studentId = attendance.studentId;
          final attendanceDate = attendance.date;
          if (studentId == null ||
              studentId.isEmpty ||
              attendanceDate == null ||
              attendanceDate.isEmpty) {
            continue;
          }

          batch.set(
            _firestore
                .collection('attendances')
                .doc(_attendanceDocId(studentId, attendanceDate)),
            {...attendance.toJson(), 'updatedAt': FieldValue.serverTimestamp()},
            SetOptions(merge: true),
          );
        }

        await batch.commit();
      },
    );
  }

  Future<void> submitLeaveDecision(
    LeaveRequestData request,
    String status,
    String? reviewedBy,
    bool updateAttendance,
  ) async {
    final leaveId = request.id ?? '';
    final path = 'batch/leave_requests/$leaveId';

    await FirebaseLogger.write(
      'BATCH',
      path,
      {'leaveRequestId': leaveId, 'status': status, 'reviewedBy': reviewedBy},
      () async {
        final batch = _firestore.batch();

        if (leaveId.isNotEmpty) {
          batch.update(_firestore.collection('leave_requests').doc(leaveId), {
            'status': status,
            'reviewedBy': reviewedBy,
            'updatedAt': FieldValue.serverTimestamp(),
          });
        }

        if (status == 'approved' && updateAttendance) {
          final date = request.date;
          final studentId = request.studentId;
          if (date != null && date.isNotEmpty && studentId != null) {
            batch.set(
              _firestore
                  .collection('attendances')
                  .doc(_attendanceDocId(studentId, date)),
              {
                'studentId': studentId,
                'classId': request.classId,
                'date': date,
                'status': 'absent_excused',
                'note': request.reason,
                'checkInTime': FieldValue.delete(),
                'checkOutTime': FieldValue.delete(),
                'recordedBy': reviewedBy,
                'updatedAt': FieldValue.serverTimestamp(),
              },
              SetOptions(merge: true),
            );
          }
        }

        await batch.commit();
      },
    );
  }

  Future<List<AttendanceData>> getAttendanceHistory(
    String studentId,
    String startDate,
    String endDate,
  ) async {
    final path =
        'attendances?studentId=$studentId&startDate=$startDate&endDate=$endDate';

    final snapshot = await FirebaseLogger.list(
      path,
      () => _firestore
          .collection('attendances')
          .where('studentId', isEqualTo: studentId)
          .where('date', isGreaterThanOrEqualTo: startDate)
          .where('date', isLessThanOrEqualTo: endDate)
          .get(),
      requestMeta: {
        'studentId': studentId,
        'startDate': startDate,
        'endDate': endDate,
      },
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => AttendanceData.fromJson(doc.toModelJson))
        .toList();
  }

  String _attendanceDocId(String studentId, String date) =>
      '${studentId}_${date.replaceAll('-', '')}';

  String _sessionDocId(String classId, String date) =>
      '${classId}_${date.replaceAll('-', '')}';
}
