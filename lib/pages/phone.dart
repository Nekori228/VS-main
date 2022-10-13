import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

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
            'ТЕЛЕФОНЫ СЛУБЖ',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Медицина',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
                child: const Scroll()
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Полиция',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              child: const Scroll(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Посольство',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              child: const Scroll(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Транспорт',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              child: const Scroll(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Свои номера',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              child: const Number(),
            ),
          ]),
        ));
  }
}

class Scroll extends StatelessWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/services');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(15),
                  width: 230,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                SvgPicture.asset('assets/images/medicine.svg')),
                      ),
                      const SizedBox(
                        width: 125,
                        height: 40,
                        child: Text('Единый телефон служб',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/services');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(15),
                  width: 230,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                SvgPicture.asset('assets/images/medicine.svg')),
                      ),
                      const SizedBox(
                        width: 125,
                        height: 40,
                        child: Text('Единый телефон служб',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              )
            ])),
      ],
    );
  }
}

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit');
                },
                child: Container(
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: Colors.orange,
                    dashPattern: [4, 4],
                    strokeWidth: 2,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(22, 20, 20, 20),
                          child: SizedBox(
                              width: 25,
                              height: 25,
                              child: SvgPicture.asset('assets/images/plus.svg')),
                        ),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.all(15),
                  width: 80,
                  height: 80,
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(15),
                  width: 170,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset('assets/images/hotel.svg')),
                      ),
                      const SizedBox(
                        width: 90,
                        height: 40,
                        child: Text('Отель Невский',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(15),
                  width: 170,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset('assets/images/hotel.svg')),
                      ),
                      const SizedBox(
                        width: 90,
                        height: 40,
                        child: Text('Отель Невский',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              )
            ])),
      ],
    );
  }
}
