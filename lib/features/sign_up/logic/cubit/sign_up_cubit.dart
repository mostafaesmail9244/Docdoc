import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mide_mate/features/sign_up/data/models/register_request.dart';
import 'package:mide_mate/features/sign_up/data/repository/sing_up_repo.dart';
import 'package:mide_mate/features/sign_up/logic/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController passConfirmationController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final SignUpRepo _signUpRepo;
  void emitSingUpState() async {
    RegisterRequest registerRequest = RegisterRequest(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: '0',
        password: passController.text,
        passwordConfirmation: passConfirmationController.text);
    var data = await _signUpRepo.singUp(registerRequest);
    emit(const SignUpState.loading());
    data.when(success: ((registerResponse) {
      emit(SignUpState.success(registerResponse));
    }), failure: ((error) {
      emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
    }));
  }
}
