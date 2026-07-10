import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class FeedDetailPage extends StatefulWidget {
  const FeedDetailPage({
    super.key,
    this.title = 'Chi tiết bài viết',
    this.author = 'Cô Lan',
    this.content = 'Hôm nay lớp học vẽ tranh chủ đề gia đình.',
    this.openComments = false,
  });

  final String title;
  final String author;
  final String content;
  final bool openComments;

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends BasePageState<FeedDetailPage, DefaultBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          AppText.h2(widget.author, fontWeight: FontWeight.bold),
          SizedBox(height: 8.h),
          AppText.b1(widget.content),
          SizedBox(height: 24.h),
          AppText.b2('Bình luận', fontWeight: FontWeight.w600),
          SizedBox(height: 8.h),
          const _CommentTile(author: 'Phụ huynh An', text: 'Bé nhà mình vẽ đẹp lắm ạ!'),
          const _CommentTile(author: 'Phụ huynh Ngọc', text: 'Cảm ơn cô đã chia sẻ.'),
        ],
      ),
    );
  }
}

class _CommentTile extends StatelessWidget {
  const _CommentTile({required this.author, required this.text});

  final String author;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.b2(author, fontWeight: FontWeight.w600),
          AppText.b1(text, color: AppColors.grayDark),
        ],
      ),
    );
  }
}
