import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteraiwebtest/Events/profile_event.dart';
import 'package:flutteraiwebtest/Models/User_model.dart';
import 'package:flutteraiwebtest/States/Profile_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

  ProfileBloc() : super(ProfileLoading()) {
    on<LoadProfile>((event, emit) async {
      try {
        // Fetch user from Firestore by ID
        DocumentSnapshot doc = await usersCollection.doc(event.userId).get();
        if (doc.exists) {
          UserModel user = UserModel.fromFirestore(doc);
          emit(ProfileLoaded(user));
        } else {
          emit(ProfileError("User not found"));
        }
      } catch (e) {
        emit(ProfileError("Failed to load user: $e"));
      }
    });
  }
}
