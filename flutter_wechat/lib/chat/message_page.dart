import 'package:flutter/material.dart';
import 'message_data.dart';
import 'message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.keyboard_voice)
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xffa9a9a9)
                  ),
                )
              )
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: messageData.length,
                itemBuilder: (BuildContext context, int i) {
                  return MessageItem(messageData[i]);
                },
              )
            )
          ],
        )

      )
    );
  }
}
