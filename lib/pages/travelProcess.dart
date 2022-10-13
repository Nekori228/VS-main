import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelProcces extends StatelessWidget {
  const TravelProcces({Key? key}) : super(key: key);

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
          'ХОТИТЕ ПОПАСТЬ В МОСКВУ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            child: const Info(),
          ),
          Container(
            child: const Info2(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
            child: Row(children: [
              SvgPicture.asset('assets/images/timeline.svg'),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                  child: Text(
                    'Купить билеты',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: SizedBox(
                    width: 260,
                    height: 110,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. '
                        'Dictum viverra accumsan a proin amet.'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'КУПИТЬ БИЛЕТЫ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 20, 0),
                  child: Text(
                    'Забронировать отель',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: SizedBox(
                    width: 260,
                    height: 110,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. '
                        'Dictum viverra accumsan a proin amet.'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'ЗАБРОНИРОВАТЬ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 20, 0),
                  child: Text(
                    'Вызвать такси',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: SizedBox(
                    width: 260,
                    height: 110,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. '
                        'Dictum viverra accumsan a proin amet.'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'ЗАКАЗ ТАКСИ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ])
            ]),
          ),
        ]),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
          child: SvgPicture.asset('assets/images/time.svg')),
      const Text(
        '10-11 часов',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
        child: SvgPicture.asset('assets/images/tickets.svg'),
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Text(
          '5000-7000 p',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}

class Info2 extends StatelessWidget {
  const Info2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
          child: SvgPicture.asset('assets/images/time.svg')),
      const Text(
        '10-11 часов',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
        child: SvgPicture.asset('assets/images/road.svg'),
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Text(
          '5000-7000 p',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}
