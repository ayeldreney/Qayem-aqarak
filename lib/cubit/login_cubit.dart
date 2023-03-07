import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../shared/network/remote/requests.dart';
import '../use_cases/login_usecase.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase}) : super(LoginInitial());

  bool isVisible = true;
  IconData suffix = Icons.visibility_outlined;

  void passwordvisible() {
    isVisible = !isVisible;
    suffix =
        isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisiblilityState());
  }

  Future<void> login({required LoginRequest model}) async {
    emit(LoginLoading());
    await loginUseCase.execude(model).then((value) => value.fold((l) {
          emit(LoginError());
        }, (e) {
          emit(LoginSuccess(access: e.access.toString()));
        }));
  }
}
