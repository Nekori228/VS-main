import 'package:flutter/material.dart';

class sin extends StatelessWidget {
  const sin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 0, 15),
                child: Text('Sing up',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35
                    )
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm'
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/hmst'),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.pink
                ),
                width: 150,
                height: 40,
                child: Center(child: Text('Sing up', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
