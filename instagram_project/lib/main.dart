import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_project/hometab.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pages = [
    HomeTab(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(47.0),
        child: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          brightness: Brightness.dark,
          centerTitle: true,
          title: Text(
            "Instagram",
            style: TextStyle(color: Colors.black),
          ),
          //? Camera Icon
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.camera,
              size: 25,
              color: Colors.black,
            ),
          ),
          //? Send Icon
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesome.send_o,
                size: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),

      body: pages[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Foundation.home,
              size: 27,
            ),
            title: Text("Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.search,
              size: 27,
            ),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.add_circle_outline,
              size: 27,
            ),
            title: Text("Upload"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.heart,
              size: 27,
            ),
            title: Text("Status"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.user,
              size: 27,
            ),
            title: Text("Account"),
          ),
        ],
      ),
    );
  }
}
