part of 'login_page_bloc.dart';

 class LoginPageState {
  bool obscure = true;
  LoginPageState({required this.obscure});
 }

class LoginPageInitial extends LoginPageState {
  LoginPageInitial():super(obscure: true);

}
