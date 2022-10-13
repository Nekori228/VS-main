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
import 'package:untitled/pages/phraseCard.dart';
import 'package:untitled/pages/travelProcess.dart';
import 'package:untitled/pages/audioPlayer.dart';
import 'package:untitled/pages/boroccoMuseum.dart';
import 'package:untitled/pages/boroccoMuseumBig.dart';
import 'package:untitled/pages/map.dart';
import 'package:untitled/pages/bouttonOne.dart';


void main() => runApp(MaterialApp(
initialRoute: '/',
   routes: {
        '/': (context) => const Home(),
        '/phone': (context) => const Phone(),
        '/catalog': (context) => const Catalog(),
        '/language': (context) => const Language(),
        '/travel': (context) => const Travel(),
        '/museum': (context) => const Museum(),
        '/services': (context) => const Services(),
        '/edit': (context) => const Edit(),
        '/phrase': (context) => const Phrase(),
        '/phrasecard': (context) => const PhraseCard(),
        '/travelprocess': (context) => const TravelProcces(),
        '/audioplayer': (context) => const AudioPlayer(),
        '/boroccomuseum': (context) => const BoroccoMuseum(),
        '/boroccomuseumbig': (context) => const BoroccoMuseumBig(),
        '/map': (context) => const Map(),
        '/boutton': (context) => const Boutton(),
   },
    ));