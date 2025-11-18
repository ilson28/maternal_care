import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUserService {
  final CollectionReference usersRef =
      FirebaseFirestore.instance.collection('users');

  Future<void> saveUserData({
    required String username,
    required int age,
    required int weeksGestation,
  }) async {
    try {
      await usersRef.doc(username).set({
        'username': username,
        'age': age,
        'weeksGestation': weeksGestation,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print("Error al guardar datos en Firestore: $e");
      rethrow;
    }
  }

  Future<Map<String, dynamic>?> getUserData(String username) async {
    try {
      DocumentSnapshot snapshot = await usersRef.doc(username).get();
      if (snapshot.exists) {
        return snapshot.data() as Map<String, dynamic>;
      }
    } catch (e) {
      print("Error al obtener datos: $e");
    }
    return null;
  }
}
