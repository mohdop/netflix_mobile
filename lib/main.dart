import 'package:flutter/material.dart';
import 'package:netflix_mobile/Accueil.dart';
import 'package:netflix_mobile/Connexion.dart';
import 'package:netflix_mobile/Details.dart';
import 'Connexion.dart';
import 'Launch.dart';

void main() {
  runApp(MaterialApp(
    
    home: Home(),
    debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/connexion': (context) => Login(),
        '/Accueil': (context) => Accueil(),
        "/Details":(context) => Details(),
      },
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Details(),
      ),
    );
  }
}
