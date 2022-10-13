import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

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
          'ВЫБЕРИТЕ СИТУАЦИЮ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(children: const [LanguageBlock(), LanguageBlock()]),
            Row(children: const [LanguageBlock(), LanguageBlock()]),
            Row(children: const [LanguageBlock(), LanguageBlock()]),
            Row(children: const [LanguageBlock(), LanguageBlock()]),
          ],
        ),
      ),
    );
  }
}

class LanguageBlock extends StatelessWidget {
  const LanguageBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/phrase');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
            color: Colors.blue),
        margin: const EdgeInsets.all(10),
        width: 160,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/menu.svg'),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                  width: 80,
                  height: 40,
                  child: Text(
                    'Ресторан и кафе',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
