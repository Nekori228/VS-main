import 'package:flutter/material.dart';

class tic extends StatelessWidget {
  const tic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 460,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/photo/Tickets.png"),
              fit: BoxFit.cover,
            ),
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 0, 20),
                child: Text("Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0x60808080),
                        ),
                        child: Center(
                            child: Text('Phil Collins',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              )
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        width: 140,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0x60808080),
                        ),
                        child: Center(
                            child: Text('TV on the Radio',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0x60808080),
                        ),
                        child: Center(
                            child: Text('FC Barcelona',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('No tickets bought',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: 330,
            height: 50,
            child: Text('It appears you haven’t bought any tickets yet. Maybe try searching these?',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
    
  }
}
