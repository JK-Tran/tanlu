import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:gal/gal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

class FileDownloadHelper {
  static final Dio _dio = Dio();

  static Future<void> downloadFile({
    required BuildContext context,
    required String url,
    required String fileName,
    required String fileType,
  }) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final fileTypeLower = fileType.toLowerCase();
    final ext = fileName.split('.').last.toLowerCase();
    final isVideo =
        fileTypeLower == 'video' ||
        ['mp4', 'mov', 'avi', 'mkv', '3gp'].contains(ext);
    final isImage =
        fileTypeLower == 'image' ||
        ['jpg', 'jpeg', 'png', 'gif', 'heic', 'heif'].contains(ext);
    final isImageOrVideo = isImage || isVideo;

    if (isImageOrVideo) {
      // 1. Tải ảnh hoặc video chạy ngầm và lưu vào Thư viện ảnh (Zalo/Facebook style)
      scaffoldMessenger.clearSnackBars();
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Row(
            children: [
              SizedBox(
                width: 16.w,
                height: 16.h,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  isVideo
                      ? 'Đang tải và lưu video vào Thư viện ảnh...'
                      : 'Đang tải và lưu hình ảnh vào Thư viện ảnh...',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black87,
          duration: const Duration(
            days: 1,
          ), // Giữ hiển thị SnackBar cho tới khi hoàn tất tải ngầm
        ),
      );

      try {
        // Xin quyền truy cập Thư viện ảnh bằng API thông minh của Gal
        final hasAccess = await Gal.hasAccess();
        if (!hasAccess) {
          final granted = await Gal.requestAccess();
          if (!granted) {
            scaffoldMessenger.clearSnackBars();
            scaffoldMessenger.showSnackBar(
              const SnackBar(
                content: Text(
                  'Cần cấp quyền truy cập Thư viện ảnh để lưu tệp.',
                ),
                backgroundColor: AppColors.error,
              ),
            );
            return;
          }
        }

        // Tải file về thư mục tạm của ứng dụng
        final tempDir = await getTemporaryDirectory();
        final tempPath = '${tempDir.path}/$fileName';

        await _dio.download(
          url,
          tempPath,
          options: Options(responseType: ResponseType.bytes),
        );

        // Lưu vào Album ảnh hệ thống bằng Gal
        if (isVideo) {
          await Gal.putVideo(tempPath);
        } else {
          await Gal.putImage(tempPath);
        }

        // Xóa tệp tạm ngay sau khi đã lưu thành công để tránh chiếm bộ nhớ thiết bị
        final tempFile = File(tempPath);
        if (await tempFile.exists()) {
          await tempFile.delete();
        }

        scaffoldMessenger.clearSnackBars();
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(
                  Icons.check_circle_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    isVideo
                        ? 'Đã lưu video vào Thư viện ảnh thành công!'
                        : 'Đã lưu hình ảnh vào Thư viện ảnh thành công!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 3),
          ),
        );
      } catch (e) {
        scaffoldMessenger.clearSnackBars();
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Lỗi tải xuống: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } else {
      // 2. Tài liệu khác (Word, Excel, PDF...) -> Tải trực tiếp vào thư mục Tải xuống
      scaffoldMessenger.clearSnackBars();
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Row(
            children: [
              SizedBox(
                width: 16.w,
                height: 16.h,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  'Đang tải xuống tài liệu...',
                  style: TextStyle(fontSize: 13.sp),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black87,
          duration: const Duration(days: 1),
        ),
      );

      try {
        Directory? saveDir;
        if (Platform.isAndroid) {
          saveDir = Directory('/storage/emulated/0/Download');
        } else {
          saveDir = await getApplicationDocumentsDirectory();
        }

        if (!await saveDir.exists()) {
          await saveDir.create(recursive: true);
        }

        final savePath = '${saveDir.path}/$fileName';

        await _dio.download(
          url,
          savePath,
          options: Options(responseType: ResponseType.bytes),
        );

        scaffoldMessenger.clearSnackBars();
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(
                  Icons.check_circle_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    'Đã lưu tệp vào thư mục ${Platform.isAndroid ? "Tải xuống (Download)" : "Tài liệu"}',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 4),
          ),
        );
      } catch (e) {
        scaffoldMessenger.clearSnackBars();
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Lỗi tải tài liệu: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }
}
