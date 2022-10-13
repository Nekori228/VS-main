import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Text(
                'КАРТОЧКА ТЕЛЕФОНА',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              SvgPicture.asset('assets/images/love.svg'),
            ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(children: const [Help()]),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '112',
                    style: TextStyle(fontSize: 41, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.red),
                    height: 50,
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'ПОЗВОНИТЬ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 30),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, "
                "amet, suspendisse mi. Dictum viverra accumsan a proin amet. "
                "Amet, velit consequat enim urna, pellentesque in cursus auctor. "
                "Erat a, sapien, nisl id et. Egestas rhoncus, commodo convallis mauris. ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: const [
                  Text(
                    "Причины вызова",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Column(
              children: const [Ellipse(), Ellipse(), Ellipse()],
            )
          ],
        ),
      ),
    );
  }
}

class Ellipse extends StatefulWidget {
  const Ellipse({Key? key}) : super(key: key);

  @override
  State<Ellipse> createState() => _EllipseState();
}

class _EllipseState extends State<Ellipse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
      child: Row(children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: SvgPicture.asset('assets/images/ellipse.svg')),
        const Text(
          "Причина 1",
          style: TextStyle(fontSize: 16),
        ),
      ]),
    );
  }
}

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
        child: Text(
          'Скорая помощь',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
        ));
  }
}
