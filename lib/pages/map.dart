import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

class maps extends StatelessWidget {
  const maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Container(
            width: 360,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/mask6.svg'),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: Colors.white54
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Event name, artisrt, place'
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              width: 400,
              height: 475,
                  child:
              sur()
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/ser'),
            child: Container(
              width: 400,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:
              SvgPicture.asset('assets/images/mask4.svg'),
            ),
          )
        ],
      )
    );
  }
}

class sur extends StatelessWidget {
  const sur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(61.1500, 73.2600),
        zoom: 9.2,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'Nekori',
          onSourceTapped: null,
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
      ],
    );
  }
}