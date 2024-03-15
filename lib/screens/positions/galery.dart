import 'package:flutter/material.dart';
import 'package:front_end/widgets/drawer.dart';
import 'package:front_end/screens/positions/listImage.dart';

class Galery extends StatelessWidget {

  const Galery({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> imageList = getImagesList();
    return  Scaffold(
      drawer:const  my_drawer(),
      appBar: AppBar(
        toolbarHeight: 49.0,
        title: const Text(
          "My hot app",
          style: TextStyle(
              fontSize: 32.0, color: Colors.black, fontFamily: 'Caveat'),
        ),
        backgroundColor: const Color(0xFFDB3434),
      ),
    body:  GridView.extent(maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(5.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: imageList,
    ),


    );
  }
}

