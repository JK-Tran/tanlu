import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/shared/utils/log_utils.dart';
import 'package:tanlu_management/shared/network/exceptions/base/app_exception.dart';
import 'package:tanlu_management/shared/network/exceptions/uncaught/app_uncaught_exeption.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  final _loadingController = StreamController<bool>.broadcast();
  final _errorController = StreamController<AppException>.broadcast();

  Stream<bool> get loadingStream => _loadingController.stream;
  Stream<AppException> get errorStream => _errorController.stream;

  /// Utility method to run an async action, automatically show/hide loading, and catch errors.
  Future<void> runBlocCatching({
    required Future<void> Function() action,
    bool handleLoading = true,
    void Function(AppException)? doOnError,
  }) async {
    if (handleLoading) _loadingController.add(true);
    
    try {
      await action();
    } on AppException catch (e) {
      Log.e('AppException caught in Bloc', errorObject: e);
      if (doOnError != null) {
        doOnError(e);
      } else {
        _errorController.add(e);
      }
    } catch (e, stackTrace) {
      Log.e('Uncaught exception in Bloc', errorObject: e, stackTrace: stackTrace);
      final exception = AppUncaughtException(e);
      
      if (doOnError != null) {
        doOnError(exception);
      } else {
        _errorController.add(exception);
      }
    } finally {
      if (handleLoading) _loadingController.add(false);
    }
  }

  @override
  Future<void> close() {
    _loadingController.close();
    _errorController.close();
    return super.close();
  }
}
