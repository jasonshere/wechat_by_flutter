import 'package:flutter/material.dart';
import 'message_data.dart';
import 'package:date_format/date_format.dart';

class MessageItem extends StatelessWidget {

  final MessageData message;
  const MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9)))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 13.0, right: 13.0),
            child: Image.network(message.avatar, width: 48.0, height: 48.0)
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff353535),
                  ),
                  maxLines: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                ),
                Text(
                  message.subTitle,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xffa9a9a9),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

              ],
            )
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: const EdgeInsets.only(top: 12.0, right: 12.0),
            child: Text(
              formatDate(message.time, [HH, ":", nn, ":", ss]).toString(),
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xffa9a9a9)
              )
            )
          ),
        ],
      )
    );
  }

}