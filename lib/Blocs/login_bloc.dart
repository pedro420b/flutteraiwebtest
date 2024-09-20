// login_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutteraiwebtest/Events/login_event.dart';
import 'package:flutteraiwebtest/States/login_state.dart';
//import 'package:flutteraiwebtest/Models/User_model.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);

  }

  Future<void> _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: event.email.trim(),
              password: event.password.trim());
      emit(LoginSuccess(email: userCredential.user!.email!));
      User u1= User(userCredential.user!.uid,userCredential.user!.displayName,userCredential.user!.email,"https://fastly.picsum.photos/id/141/200/200.jpg?hmac=cy5VCF6f8Mq7cum6d-R7m7mbrGC0wgUzI4UpSX_qkIk");


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(error: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(error: 'Wrong password provided for that user.'));
      } else {
        emit(LoginFailure(error: 'Error: ${e.message}'));
      }
    }
  }
}