import 'package:flutter/material.dart';

import '../../../Dashboard/ui/Screen/Dashboard.dart';
import '../../../Home/ui/Screen/Home.dart';
import '../../../Inbox/ui/Screen/Inbox.dart';
import '../../../Tasks/ui/Screen/Tasks.dart';
import '../../../You/ui/Screen/You.dart';
import '../../../dashboard_pie/ui/screen/pie_screen.dart';
import '../../../utils/style/Colors.dart';
class NavigationBarr extends StatefulWidget {
  const NavigationBarr({Key? key}) : super(key: key);

  @override
  State<NavigationBarr> createState() => _NavigationBarrState();
}

class _NavigationBarrState extends State<NavigationBarr> {
  int  currentIndex = 0;
  List<Widget> screens = [
    Home(),
    Tasks(),
    Inbox(),
    PieScreen(),
    You()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF4E86F7),
        unselectedItemColor: Color(0xFF747474),
        unselectedIconTheme: IconThemeData(color:Color(0xFF747474) ),
        selectedIconTheme: IconThemeData(color: Color(0xFF4E86F7)),
        type: BottomNavigationBarType.fixed,
        backgroundColor: NavBarColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.task_rounded,
            ),
            label: 'My Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox_rounded,
            ),
            label: 'Inbox',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.speed_rounded,
            ),
            label: 'Dashboards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
