import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String reportDetails;
  final String? message;
  final int? statusCode;

  const Failure({required this.reportDetails, this.message, this.statusCode});

  @override
  List<Object> get props => [reportDetails];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.reportDetails, required String super.message});

  factory ServerFailure.detailed({
    /// The method where this error occurred
    required String location,

    /// REST Method type
    required RESTMethodTypes methodType,

    /// Parameters sent to server
    required Map<String, dynamic> parameters,

    /// Endpoint
    required String endpoint,

    /// Response from server
    required Map<String, dynamic> response,

    /// Status code of response
    required int? statusCode,
  }) {
    return ServerFailure(
      reportDetails: 'Details:\n - Location: $location,'
          '\n - Method Type: ${methodType.parameterRepresentation},'
          '\n - Parameters: $parameters,'
          '\n - Endpoint: $endpoint,'
          '\n - Response: $response,'
          '\n - Status code: $statusCode',
      message: response.containsKey('message') ? response['message'] : null,
    );
  }

  @override
  String toString() {
    return 'ServerFailure(\n$reportDetails\n)';
  }
}

class CacheFailure extends Failure {
  const CacheFailure({String message = ''}) : super(reportDetails: message);
}

class NoCachedInstanceIsFoundFailure extends Failure {
  const NoCachedInstanceIsFoundFailure() : super(reportDetails: '');
}

class SharedPreferenceRecordFailure extends Failure {
  const SharedPreferenceRecordFailure({String message = ''})
      : super(reportDetails: message);
}

class FirebaseAuthFailure extends Failure {
  const FirebaseAuthFailure({String message = ''})
      : super(reportDetails: message);

  factory FirebaseAuthFailure.detailed({
    required String location,
    required Map<String, dynamic> parameters,
    required String error,
  }) {
    return FirebaseAuthFailure(
      message: 'Details:\n - Location: $location,'
          '\n - Parameters: $parameters,'
          '\n - Error: $error,',
    );
  }

  @override
  String toString() {
    return 'FirebaseAuthFailure(\n$reportDetails\n)';
  }
}

class UnknownFailure extends Failure {
  const UnknownFailure({String message = ''}) : super(reportDetails: message);

  factory UnknownFailure.detailed({
    required String location,
    required Map<String, dynamic> parameters,
    required String error,
  }) {
    return UnknownFailure(
      message: 'Details:\n - Location: $location,'
          '\n - Parameters: $parameters,'
          '\n - Error: $error,',
    );
  }

  @override
  String toString() {
    return 'UnknownFailure(\n$reportDetails\n)';
  }
}

class LocalDatabaseFailure extends Failure {
  const LocalDatabaseFailure({String message = ''})
      : super(reportDetails: message);

  factory LocalDatabaseFailure.detailed({
    required String location,
    required Map<String, dynamic> parameters,
    required String error,
  }) {
    return LocalDatabaseFailure(
      message: 'Details:\n - Location: $location,'
          '\n - Parameters: $parameters,'
          '\n - Error: $error,',
    );
  }

  @override
  String toString() {
    return 'LocalDatabaseFailure(\n$reportDetails\n)';
  }
}

/// Throw this failure immediately from repository for non cached resources
/// This error can be caught using runZonedProtected top-level function
class NoInternetFailure extends Failure {
  const NoInternetFailure({String message = ''})
      : super(reportDetails: message);
}

class ErrorMessageFailure extends Failure {
  const ErrorMessageFailure({String message = '', int statusCode = 502})
      : super(reportDetails: message, message: message, statusCode: statusCode);
}

/// This enum is used as a parameter for detailed logs
enum RESTMethodTypes {
  GET(parameterRepresentation: 'GET'),
  POST(parameterRepresentation: 'POST'),
  PATCH(parameterRepresentation: 'PATCH'),
  PUT(parameterRepresentation: 'PUT'),
  DELETE(parameterRepresentation: 'DELETE');

  final String parameterRepresentation;

  const RESTMethodTypes({required this.parameterRepresentation});
}

class AccessDeniedFailure extends Failure {
  const AccessDeniedFailure({String message = ''})
      : super(reportDetails: message);

  factory AccessDeniedFailure.detailed({
    required String location,
    required Map<String, dynamic> parameters,
    required String error,
  }) {
    return AccessDeniedFailure(
      message: 'Details:\n - Location: $location,'
          '\n - Parameters: $parameters,'
          '\n - Error: $error,',
    );
  }

  @override
  String toString() {
    return 'AccessDeniedFailure(\n$reportDetails\n)';
  }
}
