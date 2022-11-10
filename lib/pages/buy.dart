import 'package:flutter/material.dart';

class buy extends StatelessWidget {
  const buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 70, 0, 0),
            child: Container(
              width: 320,
              height: 250,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/photo/group4.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Text('Tickets',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
                child: Text('BY PRICE',style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
