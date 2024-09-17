import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutteraiwebtest/Events/registration_event.dart';
import 'package:flutteraiwebtest/States/registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final FirebaseAuth _firebaseAuth;

  RegistrationBloc(this._firebaseAuth) : super(const RegistrationState()) {
  

    on<RegisterSubmitted>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, errorMessage: null));
     
      });
       
    }
  }

