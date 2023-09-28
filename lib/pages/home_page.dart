import 'package:donut_app/tab/pancake_tab.dart';
import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    //donut tab
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),

    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),

    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),

    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),

    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),

    //burger tab

    //smoothie tab

    // pancake tab

    //pizza tab
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //I want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //tab bar
            TabBar(tabs: myTabs),

            //tab bar view
            Expanded(
                child: TabBarView(children: [
              //do nut page
              DonutTab(),

              //burger page
              BurgerTab(),

              //smoothie page
              SmoothieTab(),

              PancakeTab(),

              //pizza page
              PizzaTab(),
            ]))
          ],
        ),
      ),
    );
  }
}
