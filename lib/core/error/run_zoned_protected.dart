import 'package:hive/hive.dart';
import 'package:task/core/error/failure.dart';

typedef ErrorCallback<T extends Object> = void Function(T, StackTrace);

Future<void> runLocalZonedProtected(
  Future<void> Function() body, {
  final LocalProtectedZoneSpecification decoration =
      const LocalProtectedZoneSpecification(),
}) async {
  try {
    await body();
  } on LocalDatabaseFailure catch (e, s) {
    _commonHandler(
      error: e,
      stackTrace: s,
      genericExceptionHandler: decoration.genericExceptionHandler,
      specificExceptionHandler: decoration.localDatabaseFailureHandler,
      genericExceptionRethrow: decoration.rethrowGenericException,
      specificExceptionRethrow: decoration.rethrowLocalDatabaseFailure,
    );
  } on HiveError catch (e, s) {
    final ErrorCallback<HiveError>? specificHandler;
    if (e.message.contains('not found') ?? false) {
      specificHandler = decoration.hiveBoxNotFoundHandler;
    } else if (e.message.contains('corrupted') ?? false) {
      specificHandler = decoration.hiveBoxCorruptedHandler;
    } else if (e.message.contains('permission') ?? false) {
      specificHandler = decoration.hivePermissionDeniedHandler;
    } else {
      specificHandler = decoration.hiveOtherErrorHandler;
    }

    _commonHandler(
      error: e,
      stackTrace: s,
      genericExceptionHandler: decoration.genericExceptionHandler,
      specificExceptionHandler: specificHandler,
      genericExceptionRethrow: decoration.rethrowGenericException,
      specificExceptionRethrow: decoration.rethrowHiveError,
    );
  } on AccessDeniedFailure catch (e, s) {
    _commonHandler(
      error: e,
      stackTrace: s,
      genericExceptionHandler: decoration.genericExceptionHandler,
      specificExceptionHandler: decoration.accessDeniedHandler,
      genericExceptionRethrow: decoration.rethrowGenericException,
      specificExceptionRethrow: decoration.rethrowAccessDeniedFailure,
    );
  } on LocalStorageSpaceFailure catch (e, s) {
    _commonHandler(
      error: e,
      stackTrace: s,
      genericExceptionHandler: decoration.genericExceptionHandler,
      specificExceptionHandler: decoration.storageSpaceFailureHandler,
      genericExceptionRethrow: decoration.rethrowGenericException,
      specificExceptionRethrow: decoration.rethrowStorageSpaceFailure,
    );
  } on Object catch (e, s) {
    decoration.genericExceptionHandler?.call(e, s);
    if (decoration.rethrowGenericException == true) {
      rethrow;
    }
  }
}

void _commonHandler<T extends Object>({
  required final T error,
  required final StackTrace stackTrace,
  required final ErrorCallback<Object>? genericExceptionHandler,
  required final ErrorCallback<T>? specificExceptionHandler,
  required final bool genericExceptionRethrow,
  required final bool? specificExceptionRethrow,
}) {
  if (specificExceptionHandler == null && specificExceptionRethrow == null) {
    genericExceptionHandler?.call(error, stackTrace);
    if (genericExceptionRethrow) {
      Error.throwWithStackTrace(error, stackTrace);
    }
  } else {
    specificExceptionHandler?.call(error, stackTrace);
    if (specificExceptionRethrow == true) {
      Error.throwWithStackTrace(error, stackTrace);
    }
  }
}

class LocalProtectedZoneSpecification {
  final bool rethrowGenericException;
  final ErrorCallback<Object>? genericExceptionHandler;

  final bool? rethrowAccessDeniedFailure;
  final ErrorCallback<AccessDeniedFailure>? accessDeniedHandler;

  final bool? rethrowLocalDatabaseFailure;
  final ErrorCallback<LocalDatabaseFailure>? localDatabaseFailureHandler;

  final bool? rethrowStorageSpaceFailure;
  final ErrorCallback<LocalStorageSpaceFailure>? storageSpaceFailureHandler;

  final bool? rethrowHiveError;
  final ErrorCallback<HiveError>? hiveBoxNotFoundHandler;
  final ErrorCallback<HiveError>? hiveBoxCorruptedHandler;
  final ErrorCallback<HiveError>? hivePermissionDeniedHandler;
  final ErrorCallback<HiveError>? hiveOtherErrorHandler;

  const LocalProtectedZoneSpecification({
    this.genericExceptionHandler,
    this.accessDeniedHandler,
    this.rethrowAccessDeniedFailure,
    this.localDatabaseFailureHandler,
    this.rethrowGenericException = true,
    this.rethrowLocalDatabaseFailure,
    this.rethrowStorageSpaceFailure,
    this.storageSpaceFailureHandler,
    this.rethrowHiveError,
    this.hiveBoxNotFoundHandler,
    this.hiveBoxCorruptedHandler,
    this.hivePermissionDeniedHandler,
    this.hiveOtherErrorHandler,
  });
}

class LocalStorageSpaceFailure extends Failure {
  const LocalStorageSpaceFailure({
    required String message,
    dynamic data,
  }) : super(reportDetails: message);
}
