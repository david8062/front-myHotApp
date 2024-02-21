// ignore_for_file: avoid_print

import 'package:front_end/services/position_services.dart';

class PositionsModel {
  String title;
  String description;
  String imageUrl;
  int imageId;
  PositionServices positionsServices = PositionServices();

  PositionsModel(this.title, this.description, this.imageUrl, this.imageId);

  Future<List<PositionsModel>> loadPositions() async {
    try {
      List<Map<String, dynamic>> positions =
          await positionsServices.getPositions();
      List<PositionsModel> listPositions = [];

      if (positions.isNotEmpty) {
        for (var element in positions) {
          listPositions.add(PositionsModel(
            element["Tittle"],
            element["Description"],
            element["UrlImage"],
            element["ID_Imagen"],
          ));
        }
        
      }   
      return listPositions;
    } catch (e) {
      print('Error cargando imágenes: $e');      
      return [];     
    }
  }
}
