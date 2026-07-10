import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_tab_bar.dart';
import 'package:tanlu_management/features/feed/presentation/services/enums/feed_tab.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends BasePageState<FeedPage, DefaultBloc>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FeedTab.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const FeedAppBar(title: 'Bảng tin'),
      body: Column(
        children: [
          FeedTabBar(controller: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _FeedList(
                  items: const [
                    _FeedPreview(
                      author: 'Cô Lan',
                      content: 'Hôm nay lớp học vẽ tranh chủ đề gia đình.',
                      timeLabel: '2 giờ trước',
                    ),
                    _FeedPreview(
                      author: 'Cô Mai',
                      content: 'Nhắc phụ huynh mang thêm áo phao tuần sau.',
                      timeLabel: 'Hôm qua',
                    ),
                  ],
                ),
                _FeedList(
                  items: const [
                    _FeedPreview(
                      author: 'Bạn',
                      content: 'Bài viết mẫu của giáo viên.',
                      timeLabel: '3 ngày trước',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeedList extends StatelessWidget {
  const _FeedList({required this.items});

  final List<_FeedPreview> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16.w),
      itemCount: items.length,
      separatorBuilder: (_, _) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        final item = items[index];
        return Card(
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.b2(item.author, fontWeight: FontWeight.w700),
                SizedBox(height: 4.h),
                AppText.b1(item.content),
                SizedBox(height: 8.h),
                AppText.t1(item.timeLabel, color: AppColors.grayMedium),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _FeedPreview {
  const _FeedPreview({
    required this.author,
    required this.content,
    required this.timeLabel,
  });

  final String author;
  final String content;
  final String timeLabel;
}
