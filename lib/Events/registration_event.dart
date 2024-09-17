import 'package:equatable/equatable.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object?> get props => [];
}

class RegisterSubmitted extends RegistrationEvent {
  final String email;
  final String password;

  const RegisterSubmitted(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
