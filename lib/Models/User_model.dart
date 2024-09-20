import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String userType;
  final String profileImageUrl;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.userType,
    required this.profileImageUrl,
  });

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return UserModel(
      id: doc.id,
      name: data['name'] ?? '',
      email: data['mail'] ?? '',
      userType: data['userType'] ?? 'Basic', // Default userType
      profileImageUrl: data['profileImageUrl'] ?? 'https://example.com/default-avatar.png', // Default image
    );
  }
}
