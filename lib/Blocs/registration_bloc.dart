import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutteraiwebtest/Events/registration_event.dart';
import 'package:flutteraiwebtest/States/registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final FirebaseAuth _firebaseAuth;

  RegistrationBloc(this._firebaseAuth) : super(const RegistrationState()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<RegisterSubmitted>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, errorMessage: null));
      try {
        UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(state.copyWith(isSuccess: true, isSubmitting: false));
      } on FirebaseAuthException catch (e) {
        String errorMessage;
        if (e.code == 'weak-password') {
          errorMessage = 'The password provided is too weak.';
        } else if (e.code == 'email-already-in-use') {
          errorMessage = 'The account already exists for that email.';
        } else {
          errorMessage = e.message ?? 'Registration failed.';
        }
        emit(state.copyWith(isSubmitting: false, errorMessage: errorMessage));
      }
    });
  }
}
