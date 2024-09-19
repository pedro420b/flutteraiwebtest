import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutteraiwebtest/Events/registration_event.dart';
import 'package:flutteraiwebtest/States/registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<RegisterUser>(_onRegisterUser);  // Event-Handler für RegisterUser registrieren
  }

  bool _isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  bool _isValidPassword(String password) {
    final passwordRegex = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  Future<void> _onRegisterUser(RegisterUser event, Emitter<RegistrationState> emit) async {
    emit(RegistrationLoading());

    final email = event.email.trim();
    final password = event.password.trim();

    if (!_isValidEmail(email)) {
      emit(const RegistrationFailure(error: 'Invalid email format'));
      return;
    }

    if (_isValidPassword(password)) {
      emit(const RegistrationFailure(
          error:
              'Password must be at least 8 characters long and contain an uppercase letter, a lowercase letter, and a number.'));
      return;
    }

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegistrationSuccess(email: userCredential.user!.email!));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(const RegistrationFailure(
            error: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(const RegistrationFailure(
            error: 'The account already exists for that email.'));
      } else {
        emit(RegistrationFailure(error: 'Error: ${e.message}'));
      }
    } catch (e) {
      emit(RegistrationFailure(error: e.toString()));
    }
  }
}
