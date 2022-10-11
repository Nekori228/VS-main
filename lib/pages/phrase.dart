import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Phrase extends StatelessWidget {
  const Phrase({Key? key}) : super(key: key);

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
          'СПИСОК ФРАЗ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Search(),
            Container(
              child: Phrases(),
            ),
            Container(
              child: Phrases(),
            ),
            Container(
              child: Phrases(),
            ),
            Container(
              child: Phrases(),
            ),
          ],
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: SizedBox(
            width: 350,
            height: 90,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Phrases extends StatefulWidget {
  const Phrases({Key? key}) : super(key: key);

  @override
  State<Phrases> createState() => _PhrasesState();
}

class _PhrasesState extends State<Phrases> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
            child: Text(
              'I want to call a taxi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            )),
        Row(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
                color: Colors.red),
            margin: EdgeInsets.all(15),
            width: 110,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TRANSPORT',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
                color: Colors.red),
            margin: EdgeInsets.all(10),
            width: 110,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'RESTAURNANT',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/phrasecard');
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: SvgPicture.asset('assets/images/moreBlue.svg')),
          ),
        ]),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              width: 330,
              height: 1,
            ),
          ),
        )
      ],
    );
  }
}
