import 'package:flutter/material.dart';

class AnomaliaModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la pantalla (puedes poner tu UI aquí)
          Container(
            color: Colors.white,
            child: Center(
              child: Text(
                "Pantalla principal",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

          // Fondo translúcido de la modal
          Container(
            color: Colors.black.withOpacity(0.4),
          ),

          // Contenido de la modal
          Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.error_outline, color: Colors.orange, size: 28),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Hemos detectado una anomalía en tu progreso, pero tranquila!\n\nHemos alertado tu profesional a cargo el cual se contactará contigo para un control preventivo",
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
