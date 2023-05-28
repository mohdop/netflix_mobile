import 'package:flutter/material.dart';
class launch extends StatefulWidget {
  const launch({super.key});
  @override
  State<launch> createState() => _launchState();
}
class _launchState extends State<launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/connexion");
        },
        child: Container(
          
          color: Colors.black,
          child: Center(
            child: Container(
              height: 100,
              child: Image.asset("assets/images/logo.png"))
            ),
        ),
      ),
    );
  }
}