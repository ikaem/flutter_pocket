import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "api_exception.freezed.dart";
// part "api_exception.g.dart";

@freezed
class ApiException with _$ApiException {
  const factory ApiException.invalidApiKey() = _InvalidApiKey;
  const factory ApiException.noInternetConnection() = _NoInternetConnection;
  const factory ApiException.notFound() = _NotFound;
  const factory ApiException.unknown() = _Unknown;
}

// this can be moved to extensions
extension SwFilmsApiExceptionAsync on ApiException {
  AsyncValue<T> asAsyncValue<T>() => when(
        invalidApiKey: () =>
            AsyncValue.error("Invalid api key", StackTrace.current),
        noInternetConnection: () =>
            AsyncValue.error("No Internet connection", StackTrace.current),
        notFound: () => AsyncValue.error("NotFound", StackTrace.current),
        unknown: () => AsyncValue.error("Unknown error", StackTrace.current),
      );
}
