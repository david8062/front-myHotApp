import 'package:flutter/material.dart';
import 'package:front_end/screens/inicio.dart';
// import 'screens/inicio.dart';
import 'screens/positions/galery.dart';


import 'dart:io';
  class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
  
}

void main() {
  // HttpOverrides.global = MyHttpOverrides();
  runApp(const Inicio());
} 



class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My hot app",
      home: HomePage(),
     
      
    );
  }
}





