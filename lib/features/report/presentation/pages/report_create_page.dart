import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' hide File;
import 'dart:io' as io;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart' as fp;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/presentation/bloc/report_bloc.dart';
import 'package:tanlu_management/features/report/domain/entity/file.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/report/presentation/widgets/interactive_image_viewer.dart';
import 'package:tanlu_management/features/report/presentation/widgets/app_video_player.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_notification_dialog.dart';

class ReportCreatePage extends StatefulWidget {
  const ReportCreatePage({
    super.key,
    required this.student,
    required this.selectedMonth,
    this.report,
  });

  final Student student;
  final String selectedMonth;
  final Report? report;

  @override
  State<ReportCreatePage> createState() => _ReportCreatePageState();
}

class _ReportCreatePageState extends State<ReportCreatePage> {
  final _titleController = TextEditingController();
  final _commentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<fp.PlatformFile> _selectedFiles = [];
  final List<File> _serverFiles = [];

  @override
  void initState() {
    super.initState();
    if (widget.report != null) {
      _titleController.text = widget.report!.title;
      _commentController.text = widget.report!.teacherComment;
      _serverFiles.addAll(widget.report!.files);
    } else {
      final monthParts = widget.selectedMonth.split('-');
      final monthLabel = monthParts.length >= 2
          ? 'tháng ${int.parse(monthParts[1])}/${monthParts[0]}'
          : widget.selectedMonth;
      _titleController.text =
          'Báo cáo kết quả can thiệp $monthLabel - Bé ${widget.student.fullName}';
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _commentController.dispose();
    super.dispose();
  }

  String _formatMonthLabel(String month) {
    final parts = month.split('-');
    if (parts.length < 2) return month;
    return 'Tháng ${int.parse(parts[1])}/${parts[0]}';
  }

  Future<void> _pickMedia() async {
    try {
      bool hasPermission = false;
      if (Platform.isAndroid) {
        final androidInfo = await DeviceInfoPlugin().androidInfo;
        if (androidInfo.version.sdkInt >= 33) {
          final photosStatus = await Permission.photos.request();
          hasPermission = photosStatus.isGranted || photosStatus.isLimited;
        } else {
          final storageStatus = await Permission.storage.request();
          hasPermission = storageStatus.isGranted;
        }
      } else if (Platform.isIOS) {
        final photosStatus = await Permission.photos.request();
        hasPermission = photosStatus.isGranted || photosStatus.isLimited;
      }

      if (!hasPermission) {
        if (mounted) {
          AppNotificationDialog.show(
            context,
            title: 'Lỗi',
            content: 'Cần cấp quyền truy cập Thư viện ảnh để chọn ảnh.',
            type: AppNotificationType.error,
          );
        }
        return;
      }

      final result = await fp.FilePicker.pickFiles(
        allowMultiple: true,
        type: fp.FileType.image,
      );

      if (result != null) {
        setState(() {
          final existingNames = _selectedFiles.map((f) => f.name).toSet();
          for (final file in result.files) {
            if (!existingNames.contains(file.name)) {
              _selectedFiles.add(file);
            }
          }
        });
      }
    } catch (e) {
      if (mounted) {
        AppNotificationDialog.show(
          context,
          title: 'Lỗi',
          content: 'Lỗi khi chọn ảnh: $e',
          type: AppNotificationType.error,
        );
      }
    }
  }

  Future<void> _pickDocuments() async {
    try {
      final result = await fp.FilePicker.pickFiles(
        allowMultiple: true,
        type: fp.FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'xls', 'xlsx'],
      );

      if (result != null) {
        setState(() {
          final existingNames = _selectedFiles.map((f) => f.name).toSet();
          for (final file in result.files) {
            if (!existingNames.contains(file.name)) {
              _selectedFiles.add(file);
            }
          }
        });
      }
    } catch (e) {
      if (mounted) {
        AppNotificationDialog.show(
          context,
          title: 'Lỗi',
          content: 'Lỗi khi chọn tài liệu: $e',
          type: AppNotificationType.error,
        );
      }
    }
  }

  bool _isMediaFile(String fileName) {
    final ext = fileName.split('.').last.toLowerCase();
    return [
      'jpg',
      'jpeg',
      'png',
      'gif',
      'heic',
      'heif',
      'mp4',
      'mov',
      'avi',
    ].contains(ext);
  }

  Widget _buildMediaSection() {
    final serverMedia = _serverFiles
        .where((f) => _isMediaFile(f.fileName))
        .toList();
    final localMedia = _selectedFiles
        .where((f) => _isMediaFile(f.name))
        .toList();

    if (serverMedia.isEmpty && localMedia.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        _buildLabel('Hình ảnh & Video đính kèm'),
        SizedBox(height: 8.h),
        SizedBox(
          height: 100.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: serverMedia.length + localMedia.length,
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
            itemBuilder: (context, index) {
              if (index < serverMedia.length) {
                final file = serverMedia[index];
                final ext = file.fileName.split('.').last.toLowerCase();
                final isVideo = ['mp4', 'mov', 'avi'].contains(ext);
                final heroTag = 'sheet-server-media-${file.id}-$index';

                return Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (isVideo) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => AppVideoPlayer(
                                videoUrl: file.fileUrl,
                                fileName: file.fileName,
                              ),
                            ),
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => InteractiveImageViewer(
                                imageUrl: file.fileUrl,
                                heroTag: heroTag,
                              ),
                            ),
                          );
                        }
                      },
                      child: Hero(
                        tag: heroTag,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: Container(
                            width: 90.w,
                            height: 90.h,
                            color: AppColors.grayBg,
                            child: isVideo
                                ? Container(
                                    color: Colors.black87,
                                    child: Center(
                                      child: Icon(
                                        Icons.play_circle_fill_rounded,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    ),
                                  )
                                : Image.network(
                                    file.fileUrl,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (
                                          context,
                                          error,
                                          stackTrace,
                                        ) => Center(
                                          child: Icon(
                                            Icons.image_not_supported_rounded,
                                            color: AppColors.grayMedium,
                                          ),
                                        ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 4.h,
                      right: 4.w,
                      child: GestureDetector(
                        onTap: () => _deleteServerFile(file),
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.6),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                final file = localMedia[index - serverMedia.length];
                final ext = file.name.split('.').last.toLowerCase();
                final isVideo = ['mp4', 'mov', 'avi'].contains(ext);

                return Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (isVideo) {
                          // Placeholder for local video
                        } else if (file.path != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => Scaffold(
                                backgroundColor: Colors.black,
                                appBar: AppBar(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  leading: IconButton(
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ),
                                body: Center(
                                  child: InteractiveViewer(
                                    minScale: 0.5,
                                    maxScale: 4.0,
                                    child: Image.file(io.File(file.path!)),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Container(
                          width: 90.w,
                          height: 90.h,
                          color: AppColors.grayBg,
                          child: isVideo
                              ? Container(
                                  color: Colors.black87,
                                  child: Center(
                                    child: Icon(
                                      Icons.videocam_rounded,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                  ),
                                )
                              : (file.path != null
                                    ? Image.file(
                                        io.File(file.path!),
                                        fit: BoxFit.cover,
                                      )
                                    : Center(
                                        child: Icon(
                                          Icons.image_rounded,
                                          color: AppColors.grayMedium,
                                        ),
                                      )),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 4.h,
                      right: 4.w,
                      child: GestureDetector(
                        onTap: () => _removeFile(_selectedFiles.indexOf(file)),
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.6),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDocSection() {
    final serverDocs = _serverFiles
        .where((f) => !_isMediaFile(f.fileName))
        .toList();
    final localDocs = _selectedFiles
        .where((f) => !_isMediaFile(f.name))
        .toList();

    if (serverDocs.isEmpty && localDocs.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        _buildLabel('Tài liệu đính kèm (PDF, Word, Excel...)'),
        SizedBox(height: 8.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: serverDocs.length + localDocs.length,
          separatorBuilder: (context, index) => SizedBox(height: 8.h),
          itemBuilder: (context, index) {
            if (index < serverDocs.length) {
              final file = serverDocs[index];
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 8.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.grayBg.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.grayLight),
                ),
                child: Row(
                  children: [
                    Icon(
                      _iconForFile(file.fileName),
                      color: _colorForFile(file.fileName),
                      size: 20,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            file.fileName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grayDark,
                            ),
                          ),
                          if (file.fileSize > 0)
                            Text(
                              _sizeLabel(file.fileSize),
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: AppColors.grayMedium,
                              ),
                            ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close_rounded,
                        size: 18,
                        color: Colors.red,
                      ),
                      onPressed: () => _deleteServerFile(file),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              );
            } else {
              final file = localDocs[index - serverDocs.length];
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 8.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.grayBg.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.grayLight),
                ),
                child: Row(
                  children: [
                    Icon(
                      _iconForFile(file.name),
                      color: _colorForFile(file.name),
                      size: 20,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            file.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grayDark,
                            ),
                          ),
                          if (file.size > 0)
                            Text(
                              _sizeLabel(file.size),
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: AppColors.grayMedium,
                              ),
                            ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close_rounded,
                        size: 18,
                        color: Colors.red,
                      ),
                      onPressed: () =>
                          _removeFile(_selectedFiles.indexOf(file)),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }

  void _deleteServerFile(File file) async {
    final confirm = await AppConfirmDialog.show(
      context,
      title: 'Thông báo',
      content: 'Bạn có chắc chắn muốn xóa?',
      confirmLabel: 'Xóa',
      type: AppConfirmDialogType.error,
    );
    if (confirm == true) {
      if (mounted) {
        context.read<ReportBloc>().add(
          DeleteReportFile(reportId: widget.report!.id, fileId: file.id),
        );
        setState(() {
          _serverFiles.removeWhere((f) => f.id == file.id);
        });
      }
    }
  }

  void _removeFile(int index) async {
    final file = _selectedFiles[index];
    final confirm = await AppConfirmDialog.show(
      context,
      title: 'Bỏ tệp đính kèm',
      content: 'Bạn có chắc chắn muốn bỏ chọn tệp "${file.name}"?',
      confirmLabel: 'Bỏ chọn',
      type: AppConfirmDialogType.warning,
    );
    if (confirm == true) {
      setState(() => _selectedFiles.removeAt(index));
    }
  }

  IconData _iconForFile(String name) {
    final ext = name.split('.').last.toLowerCase();
    if (['mp4', 'mov', 'avi'].contains(ext)) return Icons.videocam_rounded;
    if (['jpg', 'jpeg', 'png', 'gif'].contains(ext)) return Icons.image_rounded;
    return Icons.insert_drive_file_rounded;
  }

  Color _colorForFile(String name) {
    final ext = name.split('.').last.toLowerCase();
    if (['mp4', 'mov', 'avi'].contains(ext)) return const Color(0xFF8B5CF6);
    if (['jpg', 'jpeg', 'png', 'gif'].contains(ext)) return AppColors.primary;
    return AppColors.grayMedium;
  }

  String _sizeLabel(int? bytes) {
    if (bytes == null) return '';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReportBloc, ReportState>(
      listenWhen: (p, c) => c.createSuccess && !p.createSuccess,
      listener: (context, state) {
        Navigator.pop(context, true);
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.grayDark,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: AppText.t1(
            widget.report != null ? 'Cập nhật báo cáo' : 'Tạo báo cáo',
            fontWeight: FontWeight.w700,
            color: AppColors.grayDark,
            fontSize: 16.sp,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [AppColors.primary, Color(0xFF6366F1)],
                          ),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Icon(
                          Icons.assignment_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.t1(
                              widget.report != null
                                  ? 'Cập nhật báo cáo tháng'
                                  : 'Tạo báo cáo tháng',
                              fontWeight: FontWeight.w700,
                              color: AppColors.grayDark,
                              fontSize: 16.sp,
                            ),
                            AppText.b2(
                              '${widget.student.fullName} • ${_formatMonthLabel(widget.selectedMonth)}',
                              color: AppColors.grayMedium,
                              fontSize: 13.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24.h),

                  // Tiêu đề
                  _buildLabel('Tiêu đề báo cáo'),
                  SizedBox(height: 8.h),
                  _buildTextField(
                    controller: _titleController,
                    maxLines: 2,
                    hint: 'Nhập tiêu đề báo cáo...',
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? 'Vui lòng nhập tiêu đề'
                        : null,
                  ),

                  SizedBox(height: 16.h),

                  // Nhận xét
                  _buildLabel('Nhận xét của giáo viên'),
                  SizedBox(height: 8.h),
                  _buildTextField(
                    controller: _commentController,
                    maxLines: 5,
                    hint: 'Nhập nhận xét về sự tiến bộ của bé trong tháng...',
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? 'Vui lòng nhập nhận xét'
                        : null,
                  ),

                  SizedBox(height: 16.h),

                  // Đính kèm file
                  _buildLabel('Tài liệu đính kèm (Hình ảnh, Video, PDF)'),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      // Chọn ảnh từ Thư viện
                      Expanded(
                        child: GestureDetector(
                          onTap: _pickMedia,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 14.h),
                            decoration: BoxDecoration(
                              color: AppColors.grayBg,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: AppColors.primary.withValues(alpha: 0.3),
                                width: 1.w,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.photo_library_rounded,
                                  color: AppColors.primary,
                                  size: 22,
                                ),
                                SizedBox(height: 6.h),
                                AppText.b2(
                                  'Thư viện ảnh',
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      // Chọn tài liệu từ Tệp
                      Expanded(
                        child: GestureDetector(
                          onTap: _pickDocuments,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 14.h),
                            decoration: BoxDecoration(
                              color: AppColors.grayBg,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: AppColors.grayDark.withValues(
                                  alpha: 0.15,
                                ),
                                width: 1.w,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.folder_open_rounded,
                                  color: AppColors.grayDark,
                                  size: 22,
                                ),
                                SizedBox(height: 6.h),
                                AppText.b2(
                                  'Chọn tài liệu',
                                  color: AppColors.grayDark,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildMediaSection(),
                  _buildDocSection(),

                  SizedBox(height: 24.h),

                  // Nút gửi
                  BlocBuilder<ReportBloc, ReportState>(
                    buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        height: 52.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [AppColors.primary, Color(0xFF6366F1)],
                            ),
                            borderRadius: BorderRadius.circular(14.r),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primary.withValues(alpha: 0.3),
                                blurRadius: 12,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                            ),
                            onPressed: state.isSubmitting ? null : _submit,
                            child: state.isSubmitting
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 18.w,
                                        height: 18.h,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'Đang xử lý...',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.send_rounded,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        widget.report != null
                                            ? 'Cập nhật báo cáo'
                                            : 'Tạo báo cáo',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      if (_selectedFiles.isNotEmpty) ...[
                                        SizedBox(width: 8.w),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 2.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white.withValues(
                                              alpha: 0.25,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            '${_selectedFiles.length}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) => AppText.b2(
    text,
    color: AppColors.grayDark,
    fontWeight: FontWeight.w600,
    fontSize: 13.sp,
  );

  Widget _buildTextField({
    required TextEditingController controller,
    required int maxLines,
    required String hint,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(fontSize: 14.sp, color: AppColors.grayDark),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: AppColors.grayMedium.withValues(alpha: 0.8),
        ),
        filled: true,
        fillColor: AppColors.grayBg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.primary, width: 1.5.w),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 12.h,
        ),
      ),
      validator: validator,
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    final filePaths = _selectedFiles
        .map((f) => f.path)
        .whereType<String>()
        .toList();
    if (widget.report != null) {
      context.read<ReportBloc>().add(
        UpdateReport(
          id: widget.report!.id,
          title: _titleController.text.trim(),
          teacherComment: _commentController.text.trim(),
          status: widget.report!.status,
          files: filePaths,
        ),
      );
    } else {
      context.read<ReportBloc>().add(
        CreateReport(
          studentId: widget.student.id,
          reportMonth: widget.selectedMonth,
          title: _titleController.text.trim(),
          teacherComment: _commentController.text.trim(),
          files: filePaths,
        ),
      );
    }
  }
}
