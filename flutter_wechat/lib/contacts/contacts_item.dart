import 'package:flutter/material.dart';
import 'contacts_data.dart';

class ContactsItem extends StatelessWidget {

  final ContactData contactData;
  const ContactsItem(this.contactData);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: const EdgeInsets.only(left: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xffd9d9d9)
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            child: contactData.icon.startsWith('http') || contactData.icon.startsWith('HTTP')
              ? Image.network(contactData.icon, width: 36.0, height: 36.0,)
              : Image.asset('images/${contactData.icon}', width: 36.0, height: 36.0,),
          ),
          Text(
            contactData.title,
            style: TextStyle(
              fontSize: 15.0
            ),
          )
        ],
      ),
    );
  }
}