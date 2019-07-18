import 'package:flutter/material.dart';
import 'discover_item.dart';
import 'discover_data.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: discoverData.length,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            children: <Widget>[
              discoverData[i].position != 1 && discoverData[i].position != discoverData[i - 1].position
              ? Container(
                height: 10.0,
              )
              : Container(),
              DiscoverItem(discoverData[i])
            ],
          );

        }
      )
    );
  }
}