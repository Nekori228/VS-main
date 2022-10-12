import 'package:flutter/material.dart';
import 'package:untitled/pages/museum.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoroccoMuseumBig extends StatefulWidget {
  const BoroccoMuseumBig({Key? key}) : super(key: key);

  @override
  State<BoroccoMuseumBig> createState() => _BoroccoMuseumState();
}

class _BoroccoMuseumState extends State<BoroccoMuseumBig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'КАРТОЧКА МАРШРУТА',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              SvgPicture.asset('assets/images/love.svg'),
            ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 30),
              child: Text(
                'Эпоха раннего Барокко',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/photo/museum.png'),
                        fit: BoxFit.fill)),
                height: 340,
                width: 335,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/time.svg'),
                  Text(
                    '4 часа 50 минут',
                    style: TextStyle(fontSize: 16),
                  ),
                  SvgPicture.asset('assets/images/road.svg'),
                  Text(
                    '13 объектов',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [Photo(), Photo(), Photo()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: SvgPicture.asset('assets/images/timelineBig.svg')),
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
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/boutton'),
              child: Padding(
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
                          'В ПУТЬ',
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
                        'СЛЕДУЮЩИЙ ВАРИАНТ',
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
                        'УЖЕ ПРОХОДИЛ',
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
