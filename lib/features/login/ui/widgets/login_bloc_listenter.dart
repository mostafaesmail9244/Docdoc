import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/login/logic/cubit/login_cubit.dart';
import 'package:mide_mate/features/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, currnet) {
        return currnet is Loading || currnet is Error || currnet is Success;
      },
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  )),
          success: (loginResponse) {
            context.pop();
            context.pushNamed(
              Routes.homeScreen,
            );
          },
          error: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'Got id',
                style: TextStyles.font14BlueSemiBold,
              ))
        ],
      ),
    );
  }
}
