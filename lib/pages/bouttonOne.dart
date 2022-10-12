import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Boutton extends StatefulWidget {
  const Boutton({Key? key}) : super(key: key);

  @override
  State<Boutton> createState() => _BouttonState();
}

class _BouttonState extends State<Boutton> {
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
          'ТОЧКА №1 ЭРМИТАЖ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 40, 0, 40),
              child: Text(
                'Эрмитаж',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Text(
                'Часть №1',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text('История основная',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/audioplayer'),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/images/buttonPlay.svg'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Text(
                'Часть №1',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text('История основная',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/audioplayer'),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/images/buttonPlay.svg'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Позы для фото',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [Photo2(), Photo2(), Photo2()],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Описание',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: SizedBox(
                width: 340,
                height: 150,
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, at magna purus quam sit id. '
                    'Ut id aliquam molestie tortor, amet, suspendisse mi. Dictum viverra accumsan a proin amet. '
                    'Amet, velit consequat enim urna, pellentesque in cursus auctor. Erat a, sapien, nisl id et. '
                    'Egestas rhoncus, commodo convallis mauris.', style: TextStyle(fontSize: 16,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  width: 335,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ПОСМОТРЕТЬ КАРТУ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  width: 335,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'СЛЕДУЮЩИЙ ОБЪЕКТ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Photo2 extends StatelessWidget {
  const Photo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 40, 3, 30),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/photo/photoMaking.png'),
                fit: BoxFit.fill)),
        height: 120,
        width: 120,
      ),
    );
  }
}