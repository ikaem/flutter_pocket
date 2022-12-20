class HttpRequestArgs {
  HttpRequestArgs({
    required this.scheme,
    required this.apiBaseUrl,
    required this.apiContextPath,
    required this.apiEndpoint,
    this.data,
    this.queryParameters,
  });

  final String scheme;
  final String apiBaseUrl;
  final String apiContextPath;
  final String apiEndpoint;
  final Object? data;
  final Map<String, String>? queryParameters;
}
