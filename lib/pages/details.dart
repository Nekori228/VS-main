import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class detl extends StatelessWidget {
  const detl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          width: 400,
          height: 460,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/photo/bt.png"),
              fit: BoxFit.cover,
            ),
          ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Brightlight Festival',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/mask.svg'),
                  Text('Friday, 24 Aug 2019 6:30PM - 9:30PM',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/mask.svg'),
                  Text('Daboi Concert Hall',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text('5/7 Kolejowa, 01-217 Warsaw',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/mask.svg'),
                  Text('Indie Rock',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/mask.svg'),
                  Text('€40 - 90',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                  child: Text('€30 - €80', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/buys'),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Text('Buy tickets',
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
