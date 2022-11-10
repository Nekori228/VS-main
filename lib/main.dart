import 'package:flutter/material.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/login.dart';
import 'package:untitled/pages/sing_up.dart';
import 'package:untitled/pages/home_state.dart';
import 'package:untitled/pages/map.dart';
import 'package:untitled/pages/ticket.dart';
import 'package:untitled/pages/search.dart';
import 'package:untitled/pages/details.dart';
import 'package:untitled/pages/buy.dart';

void main() => runApp(MaterialApp(
initialRoute: '/',
   routes: {
        '/': (context) => const Home(),
        '/log': (context) => const login(),
        '/sing': (context) => const sin(),
        '/hmst': (context) => const home_state(),
        '/map': (context) => const maps(),
        '/tick': (context) => const tic(),
        '/ser': (context) => const search(),
        '/detail': (context) => const detl(),
        '/buys': (context) => const buy(),
   },
    ));