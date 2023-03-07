abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  String access;
  LoginSuccess({
    required this.access,
  });
}

class LoginError extends LoginState {}

class ChangePasswordVisiblilityState extends LoginState {}
