import 'package:flutter/material.dart';
import 'discover_data.dart';

class DiscoverItem extends StatefulWidget {
  DiscoverData discData;

  DiscoverItem(this.discData);

  @override
  State<StatefulWidget> createState() => _DiscoverItemState();

}

class _DiscoverItemState extends State<DiscoverItem> {
  @override
  Widget build(BuildContext context) {
    return
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'friends');
      },
      child: Container(
        height: 70.0,
        padding: const EdgeInsets.only(left: 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 0.5, color: Color(0xffd9d9d9)),
            bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9))
          )
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  "images/${widget.discData.icon}",
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Text(
                widget.discData.title,
                style: TextStyle(
                    fontSize: 16.0
                ),
              ),
            ),
            Expanded(
              child: Icon(
                Icons.arrow_forward_ios,
                size: 19.0,
                color: Color(0xffd9d9d9),
              ),
            )
          ],
        ),
      )
    );
  }
}