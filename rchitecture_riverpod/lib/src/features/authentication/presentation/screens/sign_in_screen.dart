// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/auth_repository_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/auth_repository_provider.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/sign_in_controller_provider.dart';
import 'package:rchitecture_riverpod/src/utils/extensions/async_value.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> signInState = ref.watch(signInControllerProvider);
    final Widget signInButtonUi = signInState.isLoading
        ? const CircularProgressIndicator()
        : const Text("Sign in anonymously");

    // ref.listen<AsyncValue>(
    //   signInControllerProvider,
    //   (previousState, currentState) {
    //     // this next line has to do with the provider recomputing for some reason
    //     if (currentState.isRefreshing) return;
    //     if (currentState.hasError) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           content: Text(
    //             // for this to work properly - the e.toString, we actually need to be handling errors at low level to propagate user friendly error messages
    //             currentState.error.toString(),
    //           ),
    //         ),
    //       );
    //     }
    //   },
    // );

    ref.listen(
      signInControllerProvider,
      (prevState, currentState) => currentState.showSnackBarOnError(context),
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign in"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: signInState.isLoading
                ? null
                : () {
                    ref.read(authRepositoryProvider).signInAnonimously();
                  },
            child: signInButtonUi,
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:rchitecture_riverpod/src/features/authentication/presentation/controllers/sign_in_controller.dart';
// import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/sign_in_controller_provider.dart';

// // just for stateful option
// class SignInScreen extends ConsumerStatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   ConsumerState<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends ConsumerState<SignInScreen> {
// // this is just to keep state
//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }

//   // a function, not as scalable as other option, to sign in
//   Future<void> _signInAnonymously() async {
//     try {
//       setState(() {
//         isLoading = true;
//       });

// // note that we use read here - we just need it once, and dont want to depend on it
// // also, note that we use the notifier underlying object - this is the object that holds all properties of the controlelr, which then extends the state notifier
// // also, note that here, ref is a member on the consumer stsate object, similar to build context
// // note, that we want the actual controlelr object here, not the state that the object exposes
//       final SignInController signInControllerNotifierObject =
//           ref.read(signInControllerProvider.notifier);

//       await signInControllerNotifierObject.anonymously();
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(
//             // for this to work properly - the e.toString, we actually need to be handling errors at low level to propagate user friendly error messages
//             e.toString(),
//           ),
//         ),
//       );
//     } finally {
//       // good to check if we are mounted

//       if (mounted) {
//         setState(() {
//           isLoading = false;
//         });
//       }
//     }
//   }
// }
