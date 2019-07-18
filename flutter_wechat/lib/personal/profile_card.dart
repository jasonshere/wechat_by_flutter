import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.only(left: 20.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xffa9a9a9),
            width: 0.5
          )
        )
      ),
      child: Row(
        children: <Widget>[
          Image.network(
            'http://img.wxcha.com/file/201808/22/3ba51897b7.jpg?down',
            width: 70,
            height: 70,
          ),
          Container(
            child: Expanded(
              child: ListView(
                children: <Widget>[
                  Text('Iron Man'),
                  Text('WeChatID: iron-man')
                ],
              )
              ),
          )
//          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}