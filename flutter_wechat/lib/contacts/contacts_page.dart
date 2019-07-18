import 'package:flutter/material.dart';
import 'contacts_data.dart';
import 'contacts_item.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final header = contactData.getRange(0, 4).toList();
    final data = contactData.getRange(4, contactData.length).toList();
    data.sort((a, b) => a.compareTo(b));
    final listData = header + data;
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                ),
                suffixIcon: Icon(Icons.keyboard_voice)
              ),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: ListView.builder(
            itemCount: listData.length,
            itemBuilder: (BuildContext context, int i) {
              return Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      i != 0 && listData[i].section != listData[i - 1].section
                          ? Container(
                        height: 25.0,
                        padding: const EdgeInsets.only(left: 15.0),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xffeeeeee)
                        ),
                        child: Text(
                            listData[i].section
                        ),
                      )
                          : Container(width: 0.0,),
                      ContactsItem(listData[i])
                    ],
                  )
                ],
              );
            }
          )
        ),
      ]
    );
  }
}