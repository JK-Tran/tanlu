import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

@lazySingleton
class FeedStorageSource {
  FeedStorageSource(this._storage);

  final FirebaseStorage _storage;

  /// `feeds/{teacherId}/{feedId}/{index}{ext}`
  Future<List<String>> uploadImages({
    required String teacherId,
    required String feedId,
    required List<String> localPaths,
    int startIndex = 0,
  }) async {
    return _uploadFiles(
      teacherId: teacherId,
      feedId: feedId,
      localPaths: localPaths,
      startIndex: startIndex,
      nameBuilder: (index, ext) => '$index$ext',
      contentTypeBuilder: _imageContentType,
    );
  }

  /// `feeds/{teacherId}/{feedId}/v{index}{ext}`
  Future<List<String>> uploadVideos({
    required String teacherId,
    required String feedId,
    required List<String> localPaths,
    int startIndex = 0,
  }) async {
    return _uploadFiles(
      teacherId: teacherId,
      feedId: feedId,
      localPaths: localPaths,
      startIndex: startIndex,
      nameBuilder: (index, ext) => 'v$index$ext',
      contentTypeBuilder: _videoContentType,
    );
  }

  Future<List<String>> _uploadFiles({
    required String teacherId,
    required String feedId,
    required List<String> localPaths,
    required int startIndex,
    required String Function(int index, String ext) nameBuilder,
    required String Function(String ext) contentTypeBuilder,
  }) async {
    if (localPaths.isEmpty) return [];

    final uploadedRefs = <Reference>[];

    try {
      final results = await Future.wait(
        List.generate(localPaths.length, (i) async {
          final localPath = localPaths[i];
          final file = File(localPath);
          if (!file.existsSync()) return null;

          final ext = _fileExtension(localPath);
          final ref = _storage.ref(
            'feeds/$teacherId/$feedId/${nameBuilder(startIndex + i, ext)}',
          );

          await ref.putFile(
            file,
            SettableMetadata(contentType: contentTypeBuilder(ext)),
          );
          uploadedRefs.add(ref);

          final url = await ref.getDownloadURL();
          return (index: startIndex + i, url: url);
        }),
      );

      final uploaded = results.whereType<({int index, String url})>().toList()
        ..sort((a, b) => a.index.compareTo(b.index));

      return uploaded.map((item) => item.url).toList();
    } catch (_) {
      await _deleteRefs(uploadedRefs);
      rethrow;
    }
  }

  Future<void> _deleteRefs(List<Reference> refs) async {
    for (final ref in refs) {
      try {
        await ref.delete();
      } catch (_) {}
    }
  }

  String _fileExtension(String path) {
    final dot = path.lastIndexOf('.');
    if (dot <= 0 || dot == path.length - 1) {
      return StringUtils.isVideoPath(path) ? '.mp4' : '.jpg';
    }
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

  String _videoContentType(String ext) {
    switch (ext.toLowerCase()) {
      case '.mov':
        return 'video/quicktime';
      case '.m4v':
        return 'video/x-m4v';
      case '.3gp':
        return 'video/3gpp';
      case '.webm':
        return 'video/webm';
      default:
        return 'video/mp4';
    }
  }
}
