import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/logout/cubit/cubit.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/enums/submission_status.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/widgets/logout_popup_action_item/logout_popup_action_item.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/utils/enums/app_enums.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/utils/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBarPopupMenu extends StatelessWidget {
  const CustomAppBarPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthUseCases authUseCases = context.read<AuthUseCases>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<LogoutCubit>(
          create: (context) => LogoutCubit(
            authUseCases: authUseCases,
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LogoutCubit, LogoutCubitState>(
            listenWhen: (previous, current) => previous != current,
            listener: _logoutCubitListener,
          ),
        ],
        child: Builder(builder: (builderContext) {
          return PopupMenuButton<MenuPopupAction>(
            onSelected: _popupMenuOnSelectedHandler(builderContext),
            itemBuilder: _popupMenuItemBuilder,
          );
        }),
      ),
    );
  }

  List<PopupMenuEntry<MenuPopupAction>> _popupMenuItemBuilder(
      BuildContext context) {
    return [
      LogoutPopupActionItem(
        label: "Logout",
        value: MenuPopupAction.logout,
      ),
    ];
  }

  Future<void> Function(MenuPopupAction action) _popupMenuOnSelectedHandler(
          BuildContext context) =>
      (MenuPopupAction action) async {
        switch (action) {
          case MenuPopupAction.logout:
            {
              final LogoutCubit logoutCubit = context.read<LogoutCubit>();

              await logoutCubit.logout();
              break;
            }
          default:
            return;
        }
      };

  void _logoutCubitListener(BuildContext context, LogoutCubitState state) {
    final SubmissionStatus? status = state.submissionStatus;

    if (status == null) return;

    if (status == SubmissionStatus.success) {
      context.showSnackbarMessage(
          "Logged our successfully - from the popup action item");
      return;
    }

    if (status == SubmissionStatus.genericError ||
        status == SubmissionStatus.invalidCredentialsError) {
      context.showSnackbarMessage(
          "There was some error with logout - from the popup action item");
    }
  }
}
