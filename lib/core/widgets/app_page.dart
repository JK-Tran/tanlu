import 'package:flutter/material.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';

/// Một wrapper dùng chung cho các trang trong ứng dụng.
/// Đảm bảo tính nhất quán về padding ngang và cấu trúc SafeArea.
class AppPage extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool useSafeArea;
  final bool extendBodyBehindAppBar;
  final ScrollPhysics? physics;

  const AppPage({
    super.key,
    required this.child,
    this.padding,
    this.useSafeArea = true,
    this.extendBodyBehindAppBar = false,
    this.physics = const BouncingScrollPhysics(),
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: AppDimens.spacingMd),
      child: child,
    );

    if (useSafeArea) {
      content = SafeArea(child: content);
    }

    return content;
  }
}

/// Widget bọc SingleChildScrollView với padding chuẩn
class AppPageScrollable extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment crossAxisAlignment;
  final ScrollPhysics physics;

  const AppPageScrollable({
    super.key,
    required this.children,
    this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.physics = const BouncingScrollPhysics(),
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: physics,
      padding: padding ?? EdgeInsets.symmetric(horizontal: AppDimens.spacingMd),
      child: Column(crossAxisAlignment: crossAxisAlignment, children: children),
    );
  }
}
