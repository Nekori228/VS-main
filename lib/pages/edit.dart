import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
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
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 0, 3),
                child: Text(
                  'Название',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
              ),
              const Center(
                child: SizedBox(
                    height: 40,
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(hintText: "Водитель такси"),
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 0, 3),
                child: Text(
                  'Телефон',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
              ),
              const Center(
                child: SizedBox(
                    height: 40,
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(hintText: "8-911-111-22-33"),
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 0, 3),
                child: Text(
                  'Описание',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
              ),
              const Center(
                child: SizedBox(
                    height: 40,
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Водитель Владимир; чётные даты"),
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    print('Test1');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.blue),
                    margin: const EdgeInsets.all(15),
                    width: 340,
                    height: 60,
                    child: const Center(
                      child: Text('ДОБАВИТЬ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => print('Test2'),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(15),
                  width: 340,
                  height: 60,
                  child: const Center(
                    child: Text('УДАЛИТЬ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
