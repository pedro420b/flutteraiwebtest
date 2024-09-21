import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteraiwebtest/Blocs/profile_bloc.dart';
import 'package:flutteraiwebtest/Events/profile_event.dart';
import 'package:flutteraiwebtest/Models/User_model.dart';
import 'package:flutteraiwebtest/States/Profile_state.dart';

class ProfilePage extends StatelessWidget {
   const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // You can replace 'user-id-here' with the actual Firebase Auth user ID if needed
    return BlocProvider(
      create: (context) => ProfileBloc()..add(LoadProfile('sVd59yaqTfE160OgEaSl')), // Example user ID
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProfileLoaded) {
              return buildProfileContent(context, state.userModel);
            } else if (state is ProfileError) {
              return Center(child: Text(state.message));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Widget buildProfileContent(BuildContext context, UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.profileImageUrl),
          ),
          const SizedBox(height: 16),
          Text(
            user.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(user.email),
          const SizedBox(height: 8),
          Text(user.userType, style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 24),
          const Divider(),
          const Text('Password'),
          const SizedBox(height: 8),
          PasswordField(label: 'Current Password'),
          const SizedBox(height: 8),
          PasswordField(label: 'New Password'),
          const SizedBox(height: 8),
          PasswordField(label: 'Confirm New Password'),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add Update profile logic here
                },
                child: const Text('Update Password'),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
            ],
          ),   
        ],
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  final String label;
  const PasswordField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      obscureText: true,
    );
  }
}
