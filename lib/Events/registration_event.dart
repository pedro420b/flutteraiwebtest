import 'package:equatable/equatable.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object?> get props => [];
}

class EmailChanged extends RegistrationEvent {
  final String email;

  const EmailChanged(this.email);

  @override
  List<Object?> get props => [email];
}

class PasswordChanged extends RegistrationEvent {
  final String password;

  const PasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}

class RegisterSubmitted extends RegistrationEvent {
  final String email;
  final String password;

  const RegisterSubmitted(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
