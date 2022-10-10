import 'package:flutter/material.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/phone.dart';
import 'package:untitled/pages/routeCatalog.dart';
import 'package:untitled/pages/language.dart';
import 'package:untitled/pages/travel.dart';
import 'package:untitled/pages/museum.dart';
import 'package:untitled/pages/phoneServices.dart';
import 'package:untitled/pages/edit.dart';
import 'package:untitled/pages/phrase.dart';

void main() => runApp(MaterialApp(
initialRoute: '/',
   routes: {
        '/': (context) => Home(),
        '/phone': (context) => Phone(),
        '/catalog': (context) => Catalog(),
        '/language': (context) => Language(),
        '/travel': (context) => Travel(),
        '/museum': (context) => Museum(),
        '/services': (context) => Services(),
        '/edit': (context) => Edit(),
        '/phrase': (context) => Phrase(),
  },
    ));