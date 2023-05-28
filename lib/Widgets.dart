import 'package:flutter/material.dart';

Widget movie(String moviePath) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: GestureDetector(child: Image.asset(moviePath)),
  );
}

Widget carousselTitle(String title, double right) {
  return Padding(
      padding: EdgeInsets.only(top: 5, right: right),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ));
}

Widget caroussel(double height) {
  return Container(
    height: height,
    child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            movie("assets/images/movie4.jpg"),
            movie("assets/images/movie5.png"),
            movie("assets/images/blackAdamPoster.png"),
            movie("assets/images/movie1.jpg"),
          ],
        )),
  );
}

Widget carousselCasting(double height) {
  return Container(
    height: height,
    child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            movie("assets/images/casting1.jpg"),
            movie("assets/images/casting2.jpg"),
            movie("assets/images/casting3.jpg"),
            movie("assets/images/casting4.jpg"),
          ],
        )),
  );
}

Widget naviguer() {
  return BottomNavigationBar(
     type: BottomNavigationBarType.fixed,
    fixedColor: Colors.grey,
    unselectedItemColor: Colors.grey,
    backgroundColor: Color.fromARGB(255, 30, 30, 30),
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        
        icon: Icon(
          Icons.home_filled,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search_sharp,
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.local_play_outlined,
        ),
        label: 'Coming soon',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.download_for_offline,
        ),
        label: 'Download',
      ),
      BottomNavigationBarItem(
        
        icon: Icon(
          Icons.menu,
        ),
        label: 'More',
      ),
    ],
  );
}
