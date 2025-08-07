class UserModel {
  final String uid;
  final String email;
  final List<String> favorites;
  final bool isAdmin;

  UserModel({
    required this.uid,
    required this.email,
    required this.favorites,
    required this.isAdmin,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      favorites: List<String>.from(map['favorites'] ?? []),
      isAdmin: map['isAdmin'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'favorites': favorites,
      'isAdmin': isAdmin,
    };
  }
}
