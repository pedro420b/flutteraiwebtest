import 'package:equatable/equatable.dart';

class RegistrationState extends Equatable {
  final String email;
  final String password;
  final String? errorMessage;
  final bool isSubmitting;
  final bool isSuccess;

  const RegistrationState({
    this.email = '',
    this.password = '',
    this.errorMessage,
    this.isSubmitting = false,
    this.isSuccess = false,
  });

  RegistrationState copyWith({
    String? email,
    String? password,
    String? errorMessage,
    bool? isSubmitting,
    bool? isSuccess,
  }) {
    return RegistrationState(
      email: email ?? this.email,
      password: password ?? this.password,
      errorMessage: errorMessage,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  List<Object?> get props => [email, password, errorMessage, isSubmitting, isSuccess];
}
