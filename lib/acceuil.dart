import 'package:flutter/material.dart';
import 'package:tem/pages/home.dart';
import 'package:tem/pages/location.dart';
import 'package:tem/pages/search.dart';
import 'package:tem/pages/setting.dart';

class acceuil extends StatefulWidget {
  const acceuil({Key? key}) : super(key: key);

  @override
  _acceuilState createState() => _acceuilState();
}

class _acceuilState extends State<acceuil> {
  int currentTab = 0;
  final List<Widget> screens = [
    home(),
    location(),
    search(),
    setting(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.photo_camera_rounded,
          color: Colors.black38,
        ),
        onPressed: () {},
        backgroundColor: Color.fromRGBO(59, 209, 179, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(59, 209, 179, 1),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 90,
                    onPressed: () {
                      setState(() {
                        currentScreen = home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Colors.white
                              : const Color.fromRGBO(17, 135, 111, 0.7),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      setState(() {
                        currentScreen = location();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_pin,
                            color: currentTab == 1
                                ? Colors.white
                                : const Color.fromRGBO(17, 135, 111, 0.7),
                            size: 30),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 150,
                    onPressed: () {
                      setState(() {
                        currentScreen = search();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 2
                              ? Colors.white
                              : const Color.fromRGBO(17, 135, 111, 0.7),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = setting();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          color: currentTab == 3
                              ? Colors.white
                              : const Color.fromRGBO(17, 135, 111, 0.7),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
