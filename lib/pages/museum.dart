import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Museum extends StatefulWidget {
  const Museum({Key? key}) : super(key: key);

  @override
  State<Museum> createState() => _MuseumState();
}

class _MuseumState extends State<Museum> {
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
                'КАРТОЧКА МУЗЕЯ',
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
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 30),
              child: Text(
                'Эрмитаж',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/photo/museum.png'),
                        fit: BoxFit.fill)),
                height: 340,
                width: 335,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [Photo(), Photo(), Photo()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/time.svg'),
                  const Text(
                    '4-5 часов',
                    style: TextStyle(fontSize: 16),
                  ),
                  SvgPicture.asset('assets/images/tickets.svg'),
                  const Text(
                    '800 руб.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: SizedBox(
                width: 340,
                height: 150,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, at magna purus quam sit id. '
                  'Ut id aliquam molestie tortor, amet, suspendisse mi. Dictum viverra accumsan a proin amet. '
                  'Amet, velit consequat enim urna, pellentesque in cursus auctor. Erat a, sapien, nisl id et. '
                  'Egestas rhoncus, commodo convallis mauris.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 40, 0, 40),
              child: Text(
                'Слушай на пути к музею',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Text(
                'Часть №1',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text('История основная',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/audioplayer'),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/images/buttonPlay.svg'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Text(
                'Часть №1',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text('История основная',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/audioplayer'),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/images/buttonPlay.svg'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
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
                      const Text(
                        'В ПУТЬ, К МУЗЕЮ',
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

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 40, 5, 30),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/photo/museum.png'),
                fit: BoxFit.fill)),
        height: 120,
        width: 120,
      ),
    );
  }
}
