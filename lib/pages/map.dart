import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

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
          'ВЫБЕРИТЕ МАРШРУТ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Text(
            'Извините, но карты нету. Для использования Google maps нужен платный API',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
