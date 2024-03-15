import 'package:flutter/material.dart';
import 'package:front_end/widgets/card_position.dart';
import 'package:front_end/widgets/drawer.dart';
import 'package:front_end/models/positions_models.dart';

class HeteroPositions extends StatelessWidget {
  const HeteroPositions({super.key, });

  @override
  Widget build(BuildContext context) {
    // Crear una instancia de PositionsModel
    PositionsModel positionsModel = PositionsModel("", "", "", 0);


    return Scaffold(
      drawer: const my_drawer(),
      appBar: AppBar(
        toolbarHeight: 49.0,
        title: const Text(
          "My hot app",
          style: TextStyle(
              fontSize: 32.0, color: Colors.black, fontFamily: 'Caveat'),
        ),
        backgroundColor: const Color(0xFFDB3434),
      ),
         body: FutureBuilder<List<PositionsModel>>(
         future: positionsModel.loadPositions(),
         builder: (context, snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting) {
             return const CircularProgressIndicator();
           } else if (snapshot.hasError) {
             return Text("Error: ${snapshot.error}");
           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
             return const Text("No hay posiciones disponibles");
           } else {
            return GridView.extent(
               maxCrossAxisExtent: 150.0,
               padding: const EdgeInsets.all(5.0),
               mainAxisSpacing: 5.0,
               crossAxisSpacing: 5.0,
               children: snapshot.data!.map((position) {
                 return GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> CardPosition(urlImage: position.imageUrl,
                      descriptionImage: position.description,
                       tittleImage: position.title)));
                   },
                   child: Hero(tag: position.imageId,
                     child: Image.network(position.imageUrl,
                     fit: BoxFit.cover, ),
                   ),
                 );
               }).toList(),
             );
           }
         },
       ),
    );
  }
}





//body: FutureBuilder<List<PositionsModel>>(
//         future: positionsModel.loadPositions(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text("Error: ${snapshot.error}");
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Text("No hay posiciones disponibles");
//           } else {
//             return GridView.extent(
//               maxCrossAxisExtent: 150.0,
//               padding: const EdgeInsets.all(5.0),
//               mainAxisSpacing: 5.0,
//               crossAxisSpacing: 5.0,
//               children: snapshot.data!.map((position) {
//                 return GestureDetector(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=> CardPosition(urlImage: position.imageUrl,
//                      descriptionImage: position.description,
//                       tittleImage: position.title)));
//                   },
//                   child: Hero(tag: position.imageId,
//                     child: Image.network(position.imageUrl,
//                     fit: BoxFit.cover, ),
//                   ),
//                 );
//               }).toList(),
//             );
//           }
//         },
//       ),
