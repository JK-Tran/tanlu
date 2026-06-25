import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';

@lazySingleton
class PersonFirestoreSource {
  PersonFirestoreSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<String> getClassNameById(String classId) async {
    if (classId.isEmpty) return '';

    final doc = await FirebaseLogger.get(
      'classes/$classId',
      () => _firestore.collection('classes').doc(classId).get(),
      dataExtractor: (snap) => snap.exists ? snap.data() : null,
    );

    if (!doc.exists) return '';

    return doc.data()?['name'] as String? ?? '';
  }
}
