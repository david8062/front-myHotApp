// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class boton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color buttonColor;
  final BorderRadius borderRadius;
  final double buttonWidth;
  final double buttonHeight;
  final TextStyle textStyle;

  const boton({super.key, 
    required this.text,
    required this.onPressed,    
    this.buttonColor = Colors.blue, // Color de fondo predeterminado
    this.borderRadius = BorderRadius.zero, // Radio de borde predeterminado
    this.buttonWidth = 100.0, // Tamaño del botón predeterminado
    this.buttonHeight = 100.0,
    this.textStyle = const TextStyle(
      color: Colors.black, // Color de texto predeterminado
      fontSize: 16.0, // Tamaño de texto predeterminado
      
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffA10000)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ))
          
        ),
        child: Text(
        text,
        style: textStyle,        
        ),
      ),
    );
  }
}
