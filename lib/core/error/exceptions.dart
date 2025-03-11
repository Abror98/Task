class ServerException implements Exception {
  final String title;
  final String message;

  ServerException({required this.message, required this.title});

  factory ServerException.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return ServerException(message: json['data'], title: json['status']);
    } else {
      return ServerException(
          message: 'Something went wrong', title: 'Server Error');
    }
  }
}

class NoInternetException implements Exception {}

class ErrorMessageException implements Exception {}

class CacheException implements Exception {
  final String message;
  final String title;

  CacheException({required this.message, required this.title});

  @override
  String toString() {
    return message;
  }
}


class CardException implements Exception {
  final String title;
  final String message;

  CardException({
    required this.message,
    required this.title,
  });

  factory CardException.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return CardException(message: json['error'], title: json['code'].toString());
    } else {
      return CardException(
          message: 'Something went wrong', title: 'Server Error');
    }
  }
}
