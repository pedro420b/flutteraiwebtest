import 'package:flutteraiwebtest/Models/User_model.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final UserModel userModel;

  ProfileLoaded(this.userModel);
}

class ProfileError extends ProfileState {
  final String message;

  ProfileError(this.message);
}
