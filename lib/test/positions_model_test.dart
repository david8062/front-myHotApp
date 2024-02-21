// ignore_for_file: depend_on_referenced_packages

import 'package:test/test.dart';

import 'package:front_end/models/positions_models.dart';

void main() {
  test('Load images in PositionsModel', () async {
    final positionsModel = PositionsModel("", "", "", 0);

    // Cargar posiciones en el modelo
    List<PositionsModel> loadedPositions = await positionsModel.loadPositions();

    // Asegurarse de que la carga de imágenes se haya completado sin errores y la lista no esté vacía
    expect(loadedPositions, isNotEmpty);

    // Acceder a las propiedades de la primera posición en la lista (asumiendo que la lista no está vacía)
    PositionsModel firstPosition = loadedPositions[0];
    expect(firstPosition.title, isNotNull);
    expect(firstPosition.description, isNotNull);
    expect(firstPosition.imageUrl, isNotNull);
    expect(firstPosition.imageId, isNotNull);
  });
}
