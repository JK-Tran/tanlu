import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChatStorageSource {
  ChatStorageSource(this._storage);

  final FirebaseStorage _storage;

  /// `chats/{conversationId}/{messageId}{ext}`
  Future<String> uploadImage({
    required String conversationId,
    required String messageId,
    required String localPath,
  }) async {
    final file = File(localPath);
    if (!file.existsSync()) {
      throw StateError('Không tìm thấy file ảnh');
    }

    final ext = _fileExtension(localPath);
    final ref = _storage.ref('chats/$conversationId/$messageId$ext');

    await ref.putFile(
      file,
      SettableMetadata(contentType: _imageContentType(ext)),
    );

    return ref.getDownloadURL();
  }

  String _fileExtension(String path) {
    final dot = path.lastIndexOf('.');
    if (dot <= 0 || dot == path.length - 1) return '.jpg';
    return path.substring(dot);
  }

  String _imageContentType(String ext) {
    switch (ext.toLowerCase()) {
      case '.png':
        return 'image/png';
      case '.webp':
        return 'image/webp';
      case '.gif':
        return 'image/gif';
      case '.heic':
        return 'image/heic';
      default:
        return 'image/jpeg';
    }
  }
}
