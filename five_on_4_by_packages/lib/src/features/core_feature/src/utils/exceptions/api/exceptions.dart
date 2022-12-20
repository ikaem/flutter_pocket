class ApiGetException implements Exception {
  ApiGetException({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  String toString() {
    return "ApiFetchException: status: $statusCode, error: $message";
  }
}

class ApiPostException implements Exception {
  ApiPostException({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  String toString() {
    return "ApiPostException: status: $statusCode, error: $message";
  }
}
