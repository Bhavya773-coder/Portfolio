import 'package:flutter/material.dart';
import 'package:potfolio/Add.dart';
import 'package:potfolio/Home.dart';
import 'package:potfolio/Prof.dart';
import 'package:potfolio/Proj.dart';
import 'package:potfolio/Skills.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var currentIndex=0;
  final screens=[

   HomePage(),
    const SkillsPage(),
     AddPage(),
    const ProjPage(),
    const ProfPage(),



  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(

        index: currentIndex,
        children: screens,
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 41,35,79),
        type: BottomNavigationBarType.fixed,
        selectedItemColor:Colors.purpleAccent,
        unselectedItemColor: Colors.white12,
        selectedLabelStyle: const TextStyle(color: Colors.white),

        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;

          });
        },

        items: const [

          BottomNavigationBarItem(activeIcon: Icon(Icons.home_filled, ),icon: Icon(Icons.home_outlined, ),label: "Home"),
          BottomNavigationBarItem(activeIcon: Icon(Icons.explore,),icon: Icon(Icons.explore_outlined,),label: "Skills"),
          BottomNavigationBarItem(activeIcon: Icon(Icons.add_box_rounded,),icon: Icon(Icons.add_box_outlined,),label: "Add"),
          BottomNavigationBarItem(activeIcon: Icon(Icons.assignment_turned_in_rounded ,),icon: Icon(Icons.assignment_turned_in_outlined  ,),label: "Projects"),
          BottomNavigationBarItem(activeIcon: Icon(Icons.account_circle_rounded ,),icon: Icon(Icons.account_circle_outlined , ),label: "Profile"),

        ],
      ),
    );
  }
}
