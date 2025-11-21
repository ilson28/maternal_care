import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/share_prefs/user_preferences.dart';
import 'package:maternalcare/utils/appColors.dart';
import 'package:maternalcare/widgets/menu.dart';
import 'package:maternalcare/services/firebase_user_service.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // controladores para manejar el texto
  final _usernameController = TextEditingController();
  final _ageController = TextEditingController();
  final _weeksController = TextEditingController();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();

  final prefs = UserPreference(); // singleton

  @override
  void initState() {
    super.initState();
    // cargar datos guardados al abrir la pantalla
    _usernameController.text = prefs.username;
    _ageController.text = prefs.age.toString();
    _weeksController.text = prefs.weeksGestation.toString();
  }

  void _saveChanges() async {
    // guardar lo que el usuario escribió
    prefs.username = _usernameController.text;
    prefs.age = int.tryParse(_ageController.text) ?? 0;
    prefs.weeksGestation = int.tryParse(_weeksController.text) ?? 0;

    //  Guardar también en Firebase
    final firebaseService = FirebaseUserService();

    try {
      await firebaseService.saveUserData(
        username: prefs.username,
        age: prefs.age,
        weeksGestation: prefs.weeksGestation,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Datos guardados en Firestore ")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error al guardar: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          backgroundColor: const Color(0xffF8C9C9),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          decoration: AppColors.backgroundApp,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.secondary,
                ),
                child: Column(
                  children: [
                    Text(
                      prefs.username != ''
                          ? 'Bienvenida ${prefs.username} '
                          : " Mi perfil ",
                      style: GoogleFonts.inder(
                        color: AppColors.primary,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/icons/add_img.png"),
                    ),
                    const SizedBox(height: 30),

                    // Nombre
                    _buildLabel("Nombre"),
                    TextField(
                      controller: _usernameController,
                      decoration: _inputDecoration().copyWith(
                        hintText: "Ingresa tu nombre",
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Edad
                    _buildLabel("Edad"),
                    TextField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: _inputDecoration(),
                    ),

                    const SizedBox(height: 30),

                    // Semanas de gestación
                    _buildLabel("Semanas de gestación"),
                    TextField(
                      controller: _weeksController,
                      keyboardType: TextInputType.number,
                      decoration: _inputDecoration(),
                    ),

                    const SizedBox(height: 30),

                    ElevatedButton(
                      onPressed: _saveChanges,
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                        ),
                        backgroundColor:
                            WidgetStatePropertyAll(AppColors.primary),
                      ),
                      child: const Text(
                        "Guardar Cambios",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  // widgets helper para no repetir código
  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 7),
      child: Row(
        children: [
          Text(
            text,
            style: GoogleFonts.inder(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
