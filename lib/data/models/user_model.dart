import 'package:maternalcare/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String uid,
    String? name,
    String? email,
  }) : super(
          uid: uid,
          name: name,
          email: email,
        );

  // Convertir desde Firebase o JSON
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map["uid"],
      name: map["name"],
      email: map["email"],
    );
  }

  // Convertir a JSON/Map
  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
    };
  }
}
