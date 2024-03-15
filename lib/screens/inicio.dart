// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:front_end/widgets/main_menu.dart';
import 'package:front_end/widgets/boton.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEF8181),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logos/logo.png"),
            const SizedBox(height: 100), // Espacio entre la imagen y el botón
            boton(
              buttonColor: const Color(0xFFB33737), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 102,
              text: "Iniciar",
              onPressed: () => {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainMenu())
                 )

              },
              textStyle: const TextStyle(
                color: Color(0xFF000000), // Color del texto
                fontSize: 48.0, // Tamaño del texto
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'           
              ),
            ),
          ],
        ),
      ),
    );
  }
}
