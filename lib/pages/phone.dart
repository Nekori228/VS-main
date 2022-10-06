import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Телефоны служб',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: <Widget>[
                // Text('Медицина', style: TextStyle(color: Colors.black, fontSize: 30),),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, '/museum');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.blue
                    ),
                    margin: EdgeInsets.all(15),
                    width: 230,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset('assets/images/medicine.svg')),
                        ),
                        SizedBox(
                          width: 125,
                          height: 40,
                          child: Text('Единый телефон служб',
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, '/museum');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.blue
                    ),
                    margin: EdgeInsets.all(15),
                    width: 230,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset('assets/images/medicine.svg')),
                        ),
                        SizedBox(
                          width: 125,
                          height: 40,
                          child: Text('Единый телефон служб',
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                )
              ]
          )
      ),
    );
  }
}
