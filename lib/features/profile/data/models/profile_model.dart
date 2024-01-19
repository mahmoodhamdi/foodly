class ProfileModel {
  final String id;
  final String username;
  final String email;
  final String uid;
  final List<String> address;
  final String userType;
  final String profileImageUrl;
  final String updatedAt;

  ProfileModel({
    required this.id,
    required this.username,
    required this.email,
    required this.uid,
    required this.address,
    required this.userType,
    required this.profileImageUrl,
    required this.updatedAt,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['_id'],
      username: json['username'],
      email: json['email'],
      uid: json['uid'],
      address: List<String>.from(json['address']),
      userType: json['userType'],
      profileImageUrl: json['profile'],
      updatedAt: json['updatedAt'],
    );
  }
}
