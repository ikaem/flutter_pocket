// this could be some generic exception too

import 'package:flutter_riverpod/flutter_riverpod.dart';

class APIException implements Exception {

const factory APIException.invalidApiKey() = this.invalidApiKey;();



}

// todo move this to extensions - and extensions could be specific, conrete
extension SWFilmsExceptionAsync on APIException {
  AsyncValue<T> invalidApiKey<T>() =>
      AsyncValue.error("Invalid API key", StackTrace.current);

  AsyncValue<T> noInternetConnection<T>() =>
      AsyncValue.error("No internet connection", StackTrace.current);

  AsyncValue<T> notFound<T>() =>
      AsyncValue.error("Film not found", StackTrace.current);

  AsyncValue<T> unknown<T>() =>
      AsyncValue.error("An error occured", StackTrace.current);

  // so now we define soem methods on the class of exception
  // invalidApiKey;: () => const AsyncValue.error("Invalid API key");,

  // AsyncValue<T> asAsyncValue<T>() => when(
  //       invalidApiKey: () =>
  //           AsyncValue.error("Invalid API key", StackTrace.current),
  //     );
}


abstract class InvalidApiKey implements APIException {
  // const factory InvalidApiKey() = 
  
}