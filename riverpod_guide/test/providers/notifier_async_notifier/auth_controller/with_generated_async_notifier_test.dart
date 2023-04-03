// ok, so first we create mock auth repository - Mock will actually replace all methods with mock ones
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_guide/src/data/repositories/auth_repository.dart';
import 'package:riverpod_guide/src/providers/notifier_async_notifier/auth_controller/with_generated_async_notifier.dart';
import 'package:riverpod_guide/src/providers/stream_provider.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

// now we also create a liustner - this will keep track of when a provider notifiers its lineres
class Listener<T> extends Mock {
  // we dont create full funciton
  void call(T? previous, T next);
//   {
// // TODO just test ing
//     print("test previuous: $previous");
//     print("test next: $next");
//   }
}

// now the test
void main() {
  setUpAll(() {
    // registerFallbackValue(/* create a dummy instance of `AsyncValue<void>` */);
    registerFallbackValue(const AsyncLoading<void>());
  });

  ProviderContainer makeProviderContainer(MockAuthRepository authRepository) {
    final container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(
          authRepository,
        ),
      ],
    );

// ok, so this will be called after currently running test- a bit of mahic
    addTearDown(container.dispose);

    return container;
  }

  // now thes test
  test("Initial state of the controller is AsyncData", () async {
// we mock the repo
    final MockAuthRepository authRepository = MockAuthRepository();
    final ProviderContainer container = makeProviderContainer(authRepository);

    // and now we createthis listener - make sure to type it
    final Listener<AsyncValue<void>> listener = Listener<AsyncValue<void>>();

    // bnow we listen
    container.listen(
      authControllerWithAsyncNotifierGeneratedProvider,
      // note here that this is the signature
      // (previous, next) {
      //   print("hello prev: $previous");
      //   print("hello next: $next");

      //   return;
      // },
      listener,

      fireImmediately: true,
    );

    // now this will again i guess call .call() - but now we want to verify that listner calls with with thes areguments
    // actually, here we verify that listener was called with the arguments we passed it - so initially, previous state was null, and second was asxyncdata. this is that container listen provides to the thing
    verify(() => listener(null, const AsyncData<void>(null)));

    verifyNoMoreInteractions(listener);

    // and we also check that durgin initialization, we never called signon anomously
    verifyNever(authRepository.singInAnonymously);
  });

  test("sign in success", () async {
    // we mock the repo
    final MockAuthRepository authRepository = MockAuthRepository();
    final ProviderContainer container = makeProviderContainer(authRepository);

// just to make sure something is returned
    when(authRepository.singInAnonymously)
        .thenAnswer((invocation) => Future.value());

    // and now we createthis listener - make sure to type it
    final Listener<AsyncValue<void>> listener = Listener<AsyncValue<void>>();

    container.listen(
      // no need to mock this, as the repo is mocked
      authControllerWithAsyncNotifierGeneratedProvider,
      // using .call here for argument sake - could use just listneer no problme
      listener,
      fireImmediately: true,
    );

    // just store data
    const AsyncData<void> data = AsyncData<void>(null);
    AsyncLoading<void> loading = const AsyncLoading<void>();

    // now we veryif data listener was called initially with thse arguments
    verify(() => listener(null, data));

    // now we we need the controller from the container - i guess the container
    final AuthControllerWithAsyncNotifierGenerated authController = container
        .read(authControllerWithAsyncNotifierGeneratedProvider.notifier);

    // now we want to signin
    await authController.singInAnonymously();
    // verify(() => listener(data, const AsyncLoading<void>()));

    // and now we want to check in order
    verifyInOrder([
      // () => listener(null, data),
      () => listener(
            data,
            // loading,
            any(that: isA<AsyncLoading>()),
          ),
      () => listener(
            // loading,
            any(that: isA<AsyncLoading>()),
            data,
          ),
    ]);
    print("printing from here!!!!!");
    logInvocations([listener]);
    verifyNoMoreInteractions(listener);
    verify(authRepository.singInAnonymously).called(1);
  });

  test("sing in failure", () async {
    final MockAuthRepository authRepository = MockAuthRepository();
    final Exception exception = Exception("Connection Failed");

    when(authRepository.singInAnonymously).thenThrow(exception);

    final ProviderContainer container = makeProviderContainer(authRepository);
    final Listener<AsyncValue<void>> listener = Listener<AsyncValue<void>>();

    container.listen(
      // note that here we are listeneing on the controller - we want to know the state inside
      authControllerWithAsyncNotifierGeneratedProvider,
      listener,
      fireImmediately: true,
    );

    const AsyncData<void> data = AsyncData<void>(null);

    verify(() => listener(null, data));

    // now call sign in
    final AuthControllerWithAsyncNotifierGenerated authController = container
        .read(authControllerWithAsyncNotifierGeneratedProvider.notifier);

    await authController.singInAnonymously();

    // now we check in order
    verifyInOrder([
      () => listener(data, any(that: isA<AsyncLoading>())),
      () =>
          listener(any(that: isA<AsyncLoading>()), any(that: isA<AsyncError>()))
    ]);

    verifyNoMoreInteractions(listener);
    verify(authRepository.singInAnonymously).called(1);
  });
}
