// transitions.dart

import 'package:flutter/material.dart';

class Transitions {
 
PageRouteBuilder createRoute(Widget destinationScreen, {Duration duration = const Duration(milliseconds: 500)}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => destinationScreen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
    transitionDuration: duration, // Usa transitionDuration en lugar de duration
  );
}


}
