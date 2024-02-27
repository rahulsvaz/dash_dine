import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_page_event.dart';
part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc() : super(LoginPageInitial()) {
    on<ObscureTextEvent>(obscureTextEvent);
  }
  obscureTextEvent(ObscureTextEvent event, Emitter<LoginPageState> emit) {
    final currentObscure = state.obscure;
    final updatedValue = !currentObscure;
    return emit(LoginPageState(obscure: updatedValue));
  }
}
