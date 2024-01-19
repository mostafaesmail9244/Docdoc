// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mide_mate/features/login/data/models/login_request.dart';

import 'package:mide_mate/features/login/data/repo/login_repo.dart';
import 'package:mide_mate/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  void emitLoginStates(
      {required String email, required String password}) async {
    var response =
        await _loginRepo.login(LoginRequest(email: email, password: password));
    emit(const LoginState.loading());
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
