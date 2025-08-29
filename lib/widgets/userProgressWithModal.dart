import 'package:flutter/material.dart';
import 'package:maternalcare/screens/userProgress.dart';
import 'package:maternalcare/widgets/alert.dart';

class UserProgressWithModal extends StatelessWidget {
  const UserProgressWithModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // mostrar modal apenas cargue la vista
    Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.4),
        builder: (_) => AnomaliaModal(),
      );
    });

    return const UserProgress();
  }
}
