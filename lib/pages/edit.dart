import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.blue),
          centerTitle: true,
          backgroundColor: Colors.white,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Text(
              'Редактировать',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ]),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
                  child: Text(
                    'Название',
                    style: TextStyle(color: Colors.black, fontSize: 21),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
                  child: Text(
                    'Водитель такси',
                  style: TextStyle(color: Colors.grey, fontSize: 13),),
                ),
              Center(
                child: SizedBox(
                  width: 330,
                  height: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1.0, color: Colors.black))),
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
