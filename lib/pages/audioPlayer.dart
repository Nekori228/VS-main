import 'package:flutter/material.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
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
          'ЧАСТЬ №1 (ИСТОРИЯ ОСНОВНАЯ)',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: Circle(),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Image.asset('assets/photo/ellipse.png'),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(
                  side: BorderSide(width: 1, color: Colors.black))),
          width: 335,
          height: 220),
    );
  }
}
