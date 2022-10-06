import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/phone');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue
                    ),
                    margin: EdgeInsets.all(15),
                    width: 340,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset('assets/images/man.svg')),
                        ),
                        Text('Попали в трудную ситуацию? \nТелефоны служб',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Padding(padding: EdgeInsets.all(10)),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: SvgPicture.asset('assets/images/more.svg')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/catalog');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue
                  ),
                  margin: EdgeInsets.all(15),
                  width: 340,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset('assets/images/map.svg')),
                      ),
                      Text('Тематически провести день? \nМаршруты прогулок',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Padding(padding: EdgeInsets.all(10)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset('assets/images/more.svg')),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/language');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue
                  ),
                  margin: EdgeInsets.all(15),
                  width: 340,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset('assets/images/woman.svg')),
                      ),
                      Text('Легко общаться с жителями? \nВыучите язык',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Padding(padding: EdgeInsets.all(10)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25 , 0, 0, 0),
                        child: SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset('assets/images/more.svg')),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/travel');
                },
                child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.blue
                ),
                  margin: EdgeInsets.all(15),
                  width: 340,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                SvgPicture.asset('assets/images/travel.svg')),
                      ),
                      Text(
                          'Хотите больше увидеть в России? \nПоездка по городам',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset('assets/images/more.svg')),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/museum');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue
                  ),
                  margin: EdgeInsets.all(15),
                  width: 340,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset('assets/images/photo.svg')),
                      ),
                      Text('Нравится духовно развиваться? \nМузеи города',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Padding(padding: EdgeInsets.all(10)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset('assets/images/more.svg')),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
