import 'package:flutter/material.dart';
import 'profile_item.dart';
import 'profile_data.dart';
import 'profile_card.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Expanded(
////          child: ProfileCard(),
//        ),
        Expanded(
          flex: 1,
          child: Container(
            child: ListView.builder(
              itemCount: profileData.length,
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  children: <Widget>[
                    profileData[i].position != 1 && profileData[i].position != profileData[i - 1].position
                        ? Container(height: 10.0,)
                        : Container(),
                    ProfileItem(profileData[i])
                  ],
                );
              }
            )
          ),
        )

      ],
    );
  }
}