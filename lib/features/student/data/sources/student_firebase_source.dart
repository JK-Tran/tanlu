import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';
import 'package:tanlu_management/shared/infrastructure/domain/pagination/paging_constants.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';

typedef StudentClassStatsRaw = ({int total, int male, int female});

@lazySingleton
class StudentFirebaseSource {
  StudentFirebaseSource(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _students =>
      _firestore.collection('students');

  Future<List<StudentData>> getStudentsByClassId({
    required String classId,
    String? gender,
    String? searchKeyword,
  }) async {
    Query<Map<String, dynamic>> query = _students.where(
      'classId',
      isEqualTo: classId,
    );

    if (gender != null && gender.isNotEmpty) {
      query = query.where('gender', isEqualTo: gender);
    }

    final keyword = searchKeyword?.trim();
    if (keyword != null && keyword.isNotEmpty) {
      query = query.orderBy('fullName').startAt([keyword]).endAt([
        '$keyword\uf8ff',
      ]);
    } else {
      query = query.orderBy('fullName');
    }

    query = query.orderBy(FieldPath.documentId);

    final path = 'students?classId=$classId&gender=$gender&search=$keyword';
    final requestMeta = {
      'classId': classId,
      'gender': gender,
      'searchKeyword': keyword,
      'limit': PagingConstants.maxStudentsPerClass,
    };

    final snapshot = await FirebaseLogger.list(
      path,
      () => query.limit(PagingConstants.maxStudentsPerClass).get(),
      requestMeta: requestMeta,
      dataExtractor: (snap) =>
          snap.docs.map((doc) => {'id': doc.id, ...doc.data()}).toList(),
      responseMetaBuilder: (snap) => {
        ...requestMeta,
        'returnedCount': snap.docs.length,
      },
    );

    return snapshot.docs.map(_mapDoc).toList();
  }

  Future<StudentClassStatsRaw> getClassStats(String classId) async {
    final base = _students.where('classId', isEqualTo: classId);

    final results = await Future.wait([
      FirebaseLogger.get(
        'students?classId=$classId&count=total',
        () => base.count().get(),
        dataExtractor: (snap) => {'count': snap.count ?? 0},
      ),
      FirebaseLogger.get(
        'students?classId=$classId&count=male',
        () => base.where('gender', isEqualTo: 'Nam').count().get(),
        dataExtractor: (snap) => {'count': snap.count ?? 0},
      ),
      FirebaseLogger.get(
        'students?classId=$classId&count=female',
        () => base.where('gender', isEqualTo: 'Nữ').count().get(),
        dataExtractor: (snap) => {'count': snap.count ?? 0},
      ),
    ]);

    return (
      total: results[0].count ?? 0,
      male: results[1].count ?? 0,
      female: results[2].count ?? 0,
    );
  }

  Future<StudentData?> getStudentById(String id) async {
    final doc = await FirebaseLogger.get(
      'students/$id',
      () => _students.doc(id).get(),
      dataExtractor: (snap) => snap.exists
          ? {'id': snap.id, ...snap.data() as Map<String, dynamic>}
          : null,
    );

    if (!doc.exists) return null;
    return _mapDoc(doc);
  }

  StudentData _mapDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = {'id': doc.id, ...doc.data()!};
    return StudentData.fromJson(data);
  }
}
