import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteraiwebtest/Events/profile_event.dart';
import 'package:flutteraiwebtest/Models/User_model.dart';
import 'package:flutteraiwebtest/States/Profile_state.dart';


// Ensure you are using the correct event and state imports

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    // Register the LoadProfile event
    on<LoadProfile>((event, emit) async {
      emit(ProfileLoading());
      try {
        // Simulating fetching user data
        UserModel user = await fetchUserById(event.userId);
        emit(ProfileLoaded(user));
      } catch (e) {
        emit(ProfileError('Failed to load profile'));
      }
    });

    // Register the UpdateProfile event
    on<UpdateProfile>((event, emit) async {
      emit(ProfileLoading());
      try {
        // Code to update profile
        await updateUser(event.userModel);
        emit(ProfileLoaded(event.userModel));
      } catch (e) {
        emit(ProfileError('Failed to update profile'));
      }
    });
  }

  Future<UserModel> fetchUserById(String userId) async {
    // Replace this with your Firebase or API call
    return UserModel(
      id: '1',
      username: 'X_AE_A_15',
      email: 'elementary221b@gmail.com',
      profileImageUrl: 'https://path-to-image.jpg',
      userType: 'Enterprise',
    );
  }

  Future<void> updateUser(UserModel user) async {
    // Update user in Firebase or API
  }
}