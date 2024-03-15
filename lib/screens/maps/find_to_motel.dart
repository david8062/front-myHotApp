

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindToMotel extends StatefulWidget {
  const FindToMotel({super.key});

  @override
  State<FindToMotel> createState() => _FindToMotelState();
}

class _FindToMotelState extends State<FindToMotel> {

  final _initialCameraPosition = const CameraPosition(
      target: LatLng(4.7380074,-74.1357403),
      zoom: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 49.0,
        title: const Text(
          "Encuentra un motel",
          style: TextStyle(
              fontSize: 32.0, color: Colors.black, fontFamily: 'Caveat'),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
