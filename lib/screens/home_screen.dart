import 'package:flutter/material.dart';

import '../screens/breakfast_screen.dart';
import '../screens/dinner_screen.dart';
import '../screens/lunch_screen.dart';
import '../widgets/App_Drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text(
            "Welcome to IRCTC Meals",
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag_rounded),
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.restaurant),
                text: "BreakFast",
              ),
              Tab(
                icon: Icon(Icons.restaurant),
                text: "Lunch",
              ),
              Tab(
                icon: Icon(Icons.restaurant),
                text: "Dinner",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BreakfastScreen(),
            LunchScreen(),
            DinnerScreen(),
          ],
        ),
      ),
    );
  }
}
