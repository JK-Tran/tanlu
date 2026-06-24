import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/explore_tab/explore_body.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/my_feed_tab/my_feed_body.dart';
import 'package:tanlu_management/features/feed/presentation/services/enums/feed_tab.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/bloc/feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_tab_bar.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends BasePageState<FeedPage, FeedBloc>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FeedTab.values.length, vsync: this);
    _tabController.addListener(_onTabChanged);

    final user = context.read<AppBloc>().currentUser;
    bloc.add(
      FeedStarted(
        authorId: user?.id ?? '',
        fullName: user?.fullName ?? '',
        avatar: user?.avatar ?? '',
        role: user?.role ?? '',
      ),
    );
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    bloc.add(FeedTabChanged(tab: FeedTab.values[_tabController.index]));
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(
      listenWhen: (prev, curr) =>
          prev.onPageError != curr.onPageError && curr.onPageError.isNotEmpty,
      listener: (context, state) {
        AppSnackbar.show(
          context,
          message: state.onPageError,
          type: AppSnackbarType.error,
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.grayBg,
          appBar: const FeedAppBar(),
          body: Column(
            children: [
              FeedTabBar(controller: _tabController),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: const [MyFeedBody(), ExploreBody()],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
