import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Hello Mr. Aniket"),
            ),
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "PNR:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Next Available Service at: ",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box_rounded,
                size: 35,
              ),
              title: Text(
                "Accounts",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.restaurant_menu_outlined,
                size: 35,
              ),
              title: Text(
                "Your Orders",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 35,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 35,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
