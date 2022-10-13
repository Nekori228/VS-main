import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/phrase.dart';

class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ВЫБЕРИТЕ ГОРОД',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Search(),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
              child: Text(
                'Москва, MSK',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TravelTransport(),
                  TravelTransport(),
                  TravelTransport()
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
              child: Text(
                'Сочи, MSK',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TravelTransport(),
                  TravelTransport(),
                  TravelTransport()
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
              child: Text(
                'Екатеринбург, MSK',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TravelTransport(),
                  TravelTransport(),
                  TravelTransport()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TravelTransport extends StatefulWidget {
  const TravelTransport({Key? key}) : super(key: key);

  @override
  State<TravelTransport> createState() => _TravelTransportState();
}

class _TravelTransportState extends State<TravelTransport> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/travelprocess');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
            color: Colors.blue),
        margin: const EdgeInsets.all(10),
        width: 110,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/bus.svg'),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                  width: 80,
                  height: 40,
                  child: Text(
                    'Самолёт',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
