import "package:flutteraiwebtest/Models/User_model.dart";
abstract class ProfileEvent {}

class LoadProfile extends ProfileEvent {
  final String userId;

  LoadProfile(this.userId);
}

class UpdateProfile extends ProfileEvent {
  final UserModel userModel;

  UpdateProfile(this.userModel);
}
