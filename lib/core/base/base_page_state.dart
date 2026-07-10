import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tanlu_management/core/widgets/loading_overlay.dart';
import 'package:tanlu_management/shared/exception/base/app_exception.dart';

import 'base_bloc.dart';
import 'default_bloc.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends State<T> {
  late final B bloc;
  StreamSubscription<AppException>? _errorSubscription;

  @override
  void initState() {
    super.initState();
    if (GetIt.instance.isRegistered<B>()) {
      bloc = GetIt.instance.get<B>();
    } else {
      // Fallback cho các trang chưa dùng Bloc thực sự
      bloc = DefaultBloc() as B;
    }

    // Lắng nghe lỗi từ Bloc để tự động hiển thị SnackBar
    _errorSubscription = bloc.errorStream.listen((AppException exception) {
      if (mounted) {
        handleError(exception);
      }
    });
  }

  @override
  void dispose() {
    _errorSubscription?.cancel();
    super.dispose();
  }

  /// Override hàm này nếu muốn tự custom cách hiển thị lỗi (ví dụ: Dialog thay vì SnackBar)
  void handleError(AppException exception) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          exception
              .toString(), // Trong thực tế, bạn có thể map lỗi này sang thông báo thân thiện hơn
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Override hàm này để build giao diện chính của trang
  Widget buildPage(BuildContext context);

  /// Override hàm này để set padding cho toàn bộ trang.
  /// Mặc định là null (tràn viền) để các AppBar và Background không bị lỗi.
  /// Trả về EdgeInsets nếu muốn áp dụng padding chung cho toàn bộ trang.
  EdgeInsetsGeometry? get pagePadding => null;

  @override
  Widget build(BuildContext context) {
    Widget pageBody = buildPage(context);

    if (pagePadding != null) {
      pageBody = Padding(padding: pagePadding!, child: pageBody);
    }

    return BlocProvider<B>.value(
      value: bloc,
      child: SafeArea(
        child: Stack(
          children: [
            pageBody,
            StreamBuilder<bool>(
              stream: bloc.loadingStream,
              initialData: false,
              builder: (context, snapshot) {
                if (snapshot.data == true) {
                  return const LoadingOverlay();
                }
                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
