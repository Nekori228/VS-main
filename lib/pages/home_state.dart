import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/map.dart';
import 'package:untitled/pages/search.dart';
import 'package:untitled/pages/ticket.dart';

class home_state extends StatefulWidget {
  const home_state({Key? key}) : super(key: key);

  @override
  State<home_state> createState() => _HomeState();
}

class _HomeState extends State<home_state> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    for_you(),
    SizedBox(
      width: 400,
      height: 585,
      child: maps(),
    ),
    tic(),
    Text('dd'),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text('Home',
      //       style: TextStyle(color: Colors.black,)),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: _widgetOptions[_selectedTab] ,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Colors.black),
            label: '',
          )
        ],
        onTap: onSelectTab,
      ),
    );
  }
}

class for_you extends StatefulWidget {
  const for_you({Key? key}) : super(key: key);

  @override
  State<for_you> createState() => _for_youState();
}

class _for_youState extends State<for_you> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
          ),
          child: Center(child:
          Text('Home',
              style: TextStyle(
                  color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              )
          )
          ),
        ),
        for_me(),
        for_s(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text('Collections',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)
              ),
            ),
          ],
        ),
        collect(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text('Discover',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)
              ),
            ),
          ],
        ),
        dis(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 40, 0, 0),
                  child: SvgPicture.asset('assets/images/mask5.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 40, 5, 0),
                  child: Text('Warsaw'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text('Upcoming',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 15, 0, 0),
                  child: SvgPicture.asset('assets/images/mask4.svg'),
                ),
              ],
            ),
            up(),
          ],
        ),
      ],
    );
  }
}

class for_me extends StatelessWidget {
  const for_me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: Text('For you',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(120, 30, 0, 0),
          child: SvgPicture.asset('assets/images/icon.svg'),
        ),
      ],
    );
  }
}

class for_s extends StatelessWidget {
  const for_s({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Container(
              width: 320,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/photo/bitmap.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('FRIDAY AUG 24, 9PM',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('Brightlight Music Festival',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                ),
                    SizedBox(
                      width: 160,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/images/mask.svg'),
                          Text('Indie Rock', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                          SvgPicture.asset('assets/images/mask2.svg'),
                          Text('€40 - €90', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Container(
              width: 320,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/photo/bitmap.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('FRIDAY AUG 24, 9PM',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text('Brightlight Music Festival',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    SizedBox(
                      width: 160,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/images/mask.svg'),
                          Text('Indie Rock', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                          SvgPicture.asset('assets/images/mask2.svg'),
                          Text('€40 - €90', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class collect extends StatelessWidget {
  const collect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Container(
            width: 320,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/photo/bitmap2.png"),
                fit: BoxFit.cover,
              ),
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 5),
                    child: Text('Electronica Next Month', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                          child: SvgPicture.asset('assets/images/mask2.svg'),
                        ),
                        Text('Electronica', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
                          ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                    child: Row(
                      children: [
                        Text('Learn more', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17)),
                        SvgPicture.asset('assets/images/mask3.svg')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Container(
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/photo/bitmap2.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 5),
                    child: Text('Electronica Next Month', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                          child: SvgPicture.asset('assets/images/mask2.svg'),
                        ),
                        Text('Electronica', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                    child: Row(
                      children: [
                        Text('Learn more', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17)),
                        SvgPicture.asset('assets/images/mask3.svg')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class dis extends StatelessWidget {
  const dis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Container(
              width: 170,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/images/icon2.svg'),
                  Text("YOUR AREA", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              width: 170,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/images/icon5.svg'),
                  Text("MUSIC", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              width: 170,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/images/icon4.svg'),
                  Text("SPORTS", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 15),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class up extends StatelessWidget {
  const up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 75,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/photo/Calendar.png"),
            ),
          ),
        ),
        Column(
          children: [
        Container(
          width: 280,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage("assets/photo/bitmap4.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: Text('Brightlight Music Festival',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 25),
                  child: SizedBox(
                    width: 160,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/mask.svg'),
                        Text('Indie Rock', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                        SvgPicture.asset('assets/images/mask2.svg'),
                        Text('€40 - €90', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
            Container(
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/photo/group.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text('3 EVENTS MORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)
                      ),
                    ),
                    SvgPicture.asset('assets/images/mask3.svg')
                  ],
                ),
              ),
            ),
            Container(
              width: 280,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/photo/bitmap5.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text('Brightlight Music Festival',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 25),
                      child: SizedBox(
                        width: 160,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/images/mask.svg'),
                            Text('Indie Rock', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                            SvgPicture.asset('assets/images/mask2.svg'),
                            Text('€40 - €90', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/photo/group.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text('6 EVENTS MORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)
                      ),
                    ),
                    SvgPicture.asset('assets/images/mask3.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}




