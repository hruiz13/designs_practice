import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {



  final Map nav = {
    0: 'basic_design',
    1: 'scroll_design',
    2: 'compouse_design'
  };

  CustomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      Navigator.pushNamed(context, nav[index]);
      }
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 2,
      items: const[

        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendar'
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_outlined),
          label: 'Status'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Users'
        ),
         

      ],
      onTap: _onItemTapped,
    );
    
  }
}