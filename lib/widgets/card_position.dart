import 'package:flutter/material.dart';

class CardPosition extends StatelessWidget {
  final String urlImage;
  final String tittleImage;
  final String descriptionImage;

  const CardPosition(
      {super.key,
      required this.urlImage,
      required this.descriptionImage,
      required this.tittleImage});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(                 
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: 
            (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios)),
            SizedBox(
              width: 360, // Ancho deseado
              height: 250, // Alto deseado
              child: Image.network(urlImage)
            ),
            Container(
              color: const Color(0xFFE93434),
              width: 500.0,
              height: 32.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              alignment: Alignment.center,
              child: Text(
                tittleImage,
                style: const TextStyle(
                  fontFamily: 'Caveat',
                  fontSize: 28.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Container(
              width: 500,
              height: 317,
              color: const Color(0xFFD9D9D9),
              padding: const EdgeInsets.all(16.0),
              child:  Text(
                descriptionImage,
                style:const TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
