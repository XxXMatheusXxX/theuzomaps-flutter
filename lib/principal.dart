import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key : key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THEUZO MAPS'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(40.71167, 74.01250), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/atlas/{z}/{x}/{y}.png?apikey=71f92acf72bd4aa987703bbe92e28cef',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(40.71167, 74.01250),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red,),
                  ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(7.8731, 80.7718),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.blue,),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
