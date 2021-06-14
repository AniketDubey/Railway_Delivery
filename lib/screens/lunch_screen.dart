import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../models/dummydata.dart';

class LunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: DUMMY_DATA.length,
        itemBuilder: (ctx, i) {
          return Card(
            elevation: 10,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("${DUMMY_DATA[i].name}",
                            style: TextStyle(fontSize: 22)),
                        Spacer(),
                        Text("${DUMMY_DATA[i].rating}/5",
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${DUMMY_DATA[i].id}",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.purple,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(color: Colors.purple),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: DUMMY_DATA[i].mealprepared["Lunch"]!.length,
                      itemBuilder: (ct, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "${DUMMY_DATA[i].mealprepared["Lunch"]![index]}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                  Text(".."),
                                  IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
