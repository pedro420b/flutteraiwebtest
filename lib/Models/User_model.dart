class UserModel {
  final String id;
  final String username;
  final String email;
  final String profileImageUrl;
  final String userType;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.profileImageUrl,
    required this.userType,
  });

  factory UserModel.fromMap(Map<String, dynamic> data, String id) {
    return UserModel(
      id: id,
      username: data['username'] ?? '',
      email: data['email'] ?? '',
      profileImageUrl: data['profileImageUrl'] ?? '',
      userType: data['userType'] ?? 'Basic',
    );
  }
}
