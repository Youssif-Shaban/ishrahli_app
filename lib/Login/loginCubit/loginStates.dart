import '../../models/loginModel.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  late final LoginModel loginmodel;

  LoginSuccessState(this.loginmodel);
}

class LoginErrorState extends LoginStates {
  final String error;
  LoginErrorState(this.error);
}
