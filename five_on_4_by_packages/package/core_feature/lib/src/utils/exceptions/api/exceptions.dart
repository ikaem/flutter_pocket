class ApiFetchException implements Exception {
  ApiFetchException({
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
