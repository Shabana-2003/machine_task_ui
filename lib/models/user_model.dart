class UserModel {
  final String userId;
  final String userName;
  final String email;
  final String? profileImage;

  UserModel({
    required this.userId,
    required this.userName,
    required this.email,
    this.profileImage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['user_id'],
      userName: json['name'],
      email: json['email'],
      profileImage: json['profile_image'],
    );
  }
}
