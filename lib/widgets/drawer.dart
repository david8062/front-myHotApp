import 'package:flutter/material.dart';
import 'package:front_end/screens/positions/hetero_positions.dart';
import 'package:front_end/widgets/boton.dart';
import 'package:front_end/models/positions_models.dart';
class my_drawer extends StatefulWidget {

  
  const my_drawer({super.key});

  @override
  State<my_drawer> createState() => _my_drawerState();
}

class _my_drawerState extends State<my_drawer> {
  PositionsModel positionsModel = PositionsModel("", "", "", 0);
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: const Color.fromRGBO(233, 52, 52, 0.867),
        child: Column(
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset("assets/logos/logo.png"),
            ),
            const SizedBox(height: 70),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(7),
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFA10000),
                borderRadius: BorderRadius.circular(50.0), // Radio de borde
              ),
              child: const TextField(
                style: TextStyle(
                  fontFamily: 'Caveat',
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText:
                      'Buscar...', 
                  border: InputBorder.none, 
                  focusedBorder:
                      InputBorder.none, 
                  enabledBorder: InputBorder.none, 
                  labelStyle: TextStyle(color: Colors.white),
                  focusedErrorBorder:
                      InputBorder.none, 
                ),
              ),              
            ),
            const SizedBox(height: 30),
             const Text("Explora nuestras categorias",
             textAlign: TextAlign.center,
             style: TextStyle(
              color: Colors.white,
              fontFamily: 'Caveat',
              fontSize: 28,
             ),
             ),
             const SizedBox(height: 30),
             boton(
              buttonColor:  const Color(0xFF720000), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 28,
              text: "Hetero",
              onPressed: () => {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HeteroPositions()))
              },
              textStyle: const TextStyle(
                color: Color(0xFFFFFFFF), // Color del texto
                fontSize: 24.0, // Tamaño del texto
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'           
              ),
            ),
            const SizedBox(height: 30),
             boton(
              buttonColor:  const Color(0xFFA10000), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 28,
              text: "Homo",
              onPressed: () => {
                
              },
              textStyle: const TextStyle(
                color: Color(0xFFFFFFFF), // Color del texto
                fontSize: 24.0, // Tamaño del texto
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'           
              ),
            ),
            const SizedBox(height: 30),
             boton(
              buttonColor:  const Color(0xFFA10000), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 28,
              text: "Lesbico",
              onPressed: () => {
                
              },
              textStyle: const TextStyle(
                color: Color(0xFFFFFFFF), // Color del texto
                fontSize: 24.0, // Tamaño del texto
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'           
              ),
            ),
            const SizedBox(height: 30),
             boton(
              buttonColor:  const Color(0xFFA10000), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 28,
              text: "trios",
              onPressed: () => {
                
              },
              textStyle: const TextStyle(
                color: Color(0xFFFFFFFF), // Color del texto
                fontSize: 24.0, // Tamaño del texto
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'           
              ),
            ),
            const SizedBox(height: 30),
             boton(
              buttonColor:  const Color(0xFFA10000), // Color de fondo
              borderRadius: BorderRadius.circular(50.0), // Radio de borde
              buttonWidth: 254, // Tamaño del botón
              buttonHeight: 28,
              text: "Otros",
              onPressed: () => {
                
              },
              textStyle: const TextStyle(
                color: Color(0xFFFFFFFF), // Color del texto
                fontSize: 24.0, // Tamaño del texto
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'           
              ),
            ),
          ],
        ),
      );
      }
}