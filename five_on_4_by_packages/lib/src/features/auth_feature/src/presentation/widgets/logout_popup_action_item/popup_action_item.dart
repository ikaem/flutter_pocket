import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/logout/cubit/cubit.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/utils.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/utils/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO this actually might need to axtend the popup menu item
// class LogoutPopupActionItem extends StatelessWidget {
//   const LogoutPopupActionItem({
//     super.key,
//     // TODO not sure about this
//     // required this.label,
//     required this.menuActionValue,
//   });

// // TODO this should be imported from the core i guess
//   // final String label;
//   final MenuPopupAction menuActionValue;

//   @override
//   Widget build(BuildContext context) {
//     final AppUseCases appUseCases = context.read<AppUseCases>();

//     return BlocProvider(
//       create: (context) => LogoutCubit(
//         authUseCases: appUseCases.authUseCases,
//       ),
//       child: Builder(builder: (builderContext) {
//         return BlocListener<LogoutCubit, LogoutCubitState>(
//           listenWhen: (previous, current) => previous != current,
//           listener: (context, state) {
//             final SubmissionStatus? status = state.submissionStatus;

//             if (status == null) return;

//             if (status == SubmissionStatus.success) {
//               context.showSnackbarMessage(
//                   "Logged our successfully - from the popup action item");
//               return;
//             }

//             if (status == SubmissionStatus.genericError ||
//                 status == SubmissionStatus.invalidCredentialsError) {
//               context.showSnackbarMessage(
//                   "There was some error with logout - from the popup action item");
//             }

//             // TODO: implement listener
//             // TODO we dont use factory constructors or freezed
//           },
//           child: PopupMenuItem(
//             value: menuActionValue,
//             onTap: () async {
//               final LogoutCubit logoutCubit =
//                   builderContext.read<LogoutCubit>();

//               await logoutCubit.logout();
//             },
//             // child: Text(label),
//             child: const Text("Logout"),
//           ),
//         );
//       }),
//     );
//   }
// }

// TODO this is not good because cannot access the bloc from here - would have to provide it from the outside
class LogoutPopupActionItem extends PopupMenuItem<MenuPopupAction> {
  // TODO will need to be listening on data
  LogoutPopupActionItem({
    super.key,
    // TODO not sure if i should be passing label here
    required String label,
    required MenuPopupAction value,
    // required Function() onTap,
  }) : super(
          child: Text(
            label,
          ),
          value: value,
          // onTap: () {},
        );
}
