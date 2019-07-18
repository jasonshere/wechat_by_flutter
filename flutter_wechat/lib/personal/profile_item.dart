import 'package:flutter/material.dart';
import 'profile_data.dart';

class ProfileItem extends StatelessWidget {

  ProfileData profileData;
  ProfileItem(this.profileData);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: const EdgeInsets.only(left: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xffd9d9d9), width: 0.5),
          bottom: BorderSide(color: Color(0xffd9d9d9), width: 0.5),
        )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                "images/${profileData.icon}",
                width: 50.0,
                height: 50.0
              )
            )
          ),
          Expanded(
            flex: 6,
            child: Text(
              profileData.title,
              style: TextStyle(
                fontSize: 16.0
              ),
            )
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
    );
  }
}