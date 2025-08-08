class UserModel {
  final String uid;
  final String email;
  final String name;
  final String image;
  final List<String> favorites;
  final bool isAdmin;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.image,
    required this.favorites,
    required this.isAdmin,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      image: map['image'],
      favorites: List<String>.from(map['favorites']),
      isAdmin: map['isAdmin'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'image': image,
      'favorites': favorites,
      'isAdmin': isAdmin,
    };
  }
}
