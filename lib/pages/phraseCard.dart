import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhraseCard extends StatefulWidget {
  const PhraseCard({Key? key}) : super(key: key);

  @override
  State<PhraseCard> createState() => _PhraseCardState();
}

class _PhraseCardState extends State<PhraseCard> {
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
          'КАРТОЧКА ФРАЗЫ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                child: Text('I want to call a taxi',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: SvgPicture.asset('assets/images/buttonPlay.svg')),
            ],
          ),
          Center(child: SvgPicture.asset('assets/images/arrows.svg')),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                child: Text('Я хочу вызвать такси',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(58, 0, 0, 0),
                  child: SvgPicture.asset('assets/images/buttonPlay.svg')),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'Произношение',
                style: TextStyle(fontSize: 16),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Йа хочую вызвать такси',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Описание',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 330,
                  height: 170,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, '
                        'at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. '
                        'Dictum viverra accumsan a proin amet. Amet, velit consequat enim urna, pellentesque in cursus auctor. '
                        'Erat a, sapien, nisl id et. Egestas rhoncus, commodo convallis mauris. ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
