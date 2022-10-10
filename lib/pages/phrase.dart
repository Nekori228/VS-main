import 'package:flutter/material.dart';

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
          'ВЫБЕРИТЕ СИТУАЦИЮ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
    );
  }
}
