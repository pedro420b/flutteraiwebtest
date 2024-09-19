import 'package:equatable/equatable.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object?> get props => [];
}

class RegisterUser extends RegistrationEvent {
  final String email;
  final String password;

  const RegisterUser({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
