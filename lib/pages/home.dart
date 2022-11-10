import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          aa(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Text("Let’s get closer", style: TextStyle(fontSize: 25)),
          ),
          ff(),
          ffw()
        ],
      )
    );
  }
}

class aa extends StatelessWidget {
  const aa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 460,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/photo/Tickets.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
        child: Text('WELCOME TO FREEBIE',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,),),
      ),
    );
  }
}


class ff extends StatelessWidget {
  const ff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/sing'),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.pink
          ),
        width: 150,
        height: 40,
          child: Center(
              child: Text('Sing up',
                  style: TextStyle(color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)
              )
          ),
    ),
      ),
  ]
    );
  }
}

class ffw extends StatelessWidget {
  const ffw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column (
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/log'),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.pink
                ),
                  width: 150,
                  height: 40,
                child: Center(
                    child: Text('login',
                        style: TextStyle(color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)
                    )
                ),
              ),
            ),
          )
        ]
    );
  }
}

