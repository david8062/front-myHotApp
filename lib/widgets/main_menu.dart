import 'package:flutter/material.dart';
import 'package:front_end/widgets/boton.dart';
import 'package:front_end/screens/positions/hetero_positions.dart';
import 'package:front_end/screens/maps/find_to_motel.dart';
import 'package:front_end/screens/chat/chat.dart';
import 'package:front_end/animations/transitions.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Transitions transitions = Transitions();
    return Scaffold(
      backgroundColor: const Color(0xFFEF8181),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boton(
              buttonColor: const Color(0xFFB33737), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 102,
              text: "Posiciones",
              onPressed: () => Navigator.of(context).push(
                  transitions.createRoute(const HeteroPositions(),
                      duration: const Duration(milliseconds: 500))),
              textStyle: const TextStyle(
                  color: Color(0xFF000000), // Color del texto
                  fontSize: 48.0, // Tamaño del texto
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caveat'),
            ),
            const SizedBox(height: 20),
            boton(
              buttonColor: const Color(0xFFB33737), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 102,
              text: "Salud",
              onPressed: () => {},
              textStyle: const TextStyle(
                  color: Color(0xFF000000), // Color del texto
                  fontSize: 48.0, // Tamaño del texto
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caveat'),
            ),
            const SizedBox(height: 20),
            boton(
              buttonColor: const Color(0xFFB33737), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 102,
              text: "Chatea",
              onPressed: () {
                Navigator.of(context).push(transitions.createRoute(
                    const Chat())); // Usar _createRoute en lugar de createPageRoute
              },
              textStyle: const TextStyle(
                  color: Color(0xFF000000), // Color del texto
                  fontSize: 48.0, // Tamaño del texto
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caveat'),
            ),
            const SizedBox(height: 20),
            boton(
              buttonColor: const Color(0xFFB33737), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 102,
              text: "Juega",
              onPressed: () => {},
              textStyle: const TextStyle(
                  color: Color(0xFF000000), // Color del texto
                  fontSize: 48.0, // Tamaño del texto
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caveat'),
            ),
            const SizedBox(height: 20),
            boton(
              buttonColor: const Color(0xFFB33737), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 102,
              text: "Busca un motel",
              onPressed: () => Navigator.of(context)
                  .push(transitions.createRoute(const FindToMotel())),
              textStyle: const TextStyle(
                  color: Color(0xFF000000), // Color del texto
                  fontSize: 38.0, // Tamaño del texto
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caveat'),
            )
          ],
        ),
      ),
    );
  }
}
