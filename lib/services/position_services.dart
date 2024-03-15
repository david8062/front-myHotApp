// ignore_for_file: avoid_print, dead_code

import 'dart:convert';
import 'package:http/http.dart' as http;

class PositionServices {
  Future<List<Map<String, dynamic>>> getPositions() async {
    final response = await http.get(Uri.parse('http://192.168.1.19:3000/api/positions/categories/1/images'));
    //final response = await http.get(Uri.parse('localhost:3001/api/positions/categories/1/images'));
    if (response.statusCode == 200) {
      final jsonPositions = jsonDecode(response.body);      
      return List<Map<String, dynamic>>.from(jsonPositions);      
    } else {
      throw Exception("Error al obtener los datos");
    }
  }
}
