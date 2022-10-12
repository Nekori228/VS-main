import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

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
          'КАТАЛОГ МАРШРУТОВ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Name(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [Borocco(), Borocco()],
              ),
            ),
            Name(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [Borocco(), Borocco()],
              ),
            ),
            Name(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [Borocco(), Borocco()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: Center(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/boroccomuseumbig'),
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
                          'СЛУЧАЙНЫЙ МАРШРУТ',
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
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/map'),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.red),
                    width: 335,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ПО ВАШЕМУ МЕСТУ',
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
            )
          ],
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
      child: Text(
        'Архитектура',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class Borocco extends StatelessWidget {
  const Borocco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
              color: Colors.blue,
            ),
            height: 290,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/boroccomuseum'),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/photo/museum.png'),
                              fit: BoxFit.fill)),
                      width: 260,
                      height: 190,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                  child: Text(
                    'Эпоха раннего Барроко',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 0, 15),
                  child: Text(
                    'Этот маршрут прошли 1209 человек',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
