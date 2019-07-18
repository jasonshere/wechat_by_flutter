import 'package:flutter/material.dart';
import 'chat/message_page.dart';
import 'contacts/contacts_page.dart';
import 'found/discover_page.dart';
import 'personal/profile_page.dart';

enum ItemType { GroupChat, AddFriends, ORCode, Payment, Help }

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;

  MessagePage messagePage;
  ContactsPage contactsPage;
  DiscoverPage discoverPage;
  ProfilePage profilePage;

  currentPage() {
    switch(_currentIndex) {
      case 0:
        if (messagePage == null) {
          messagePage = MessagePage();
        }
        return messagePage;
      case 1:
        if (contactsPage == null) {
          contactsPage = ContactsPage();
        }
        return contactsPage;
      case 2:
        if (discoverPage == null) {
          discoverPage = DiscoverPage();
        }
        return discoverPage;
      case 3:
        if (profilePage == null) {
          profilePage = ProfilePage();
        }
        return profilePage;
    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
              ? Image.asset(imagePath, width: 32.0, height: 28.0)
              : SizedBox(width: 32.0, height: 28.0, child: Icon(icon, color: Colors.white)),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white)
            )
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeChat'),
        centerTitle: true,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(Icons.search)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 90.0, 10.0, 0.0),
                  items: <PopupMenuEntry>[
                    _popupMenuItem('New Chat', imagePath: 'images/icon_menu_group.png'),
                    _popupMenuItem('Add Contacts', imagePath: 'images/icon_menu_addfriend.png'),
                    _popupMenuItem('Scan', imagePath: 'images/icon_menu_scan.png'),
                    _popupMenuItem('Money', icon: Icons.crop_free),
                  ]
                );
              },
              child: Icon(Icons.add)
            )
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text(
                "Chats",
                style: TextStyle(
                    color: _currentIndex == 0 ? Color(0xff46c01b) : Color(0xff999999)
                )
            ),
            icon: _currentIndex == 0 ? Image.asset(
                'images/weixin_pressed.png',
                width: 32.0,
                height: 28.0
            ) : Image.asset(
                'images/weixin_normal.png',
                width: 32.0,
                height: 28.0
            )
          ),
          BottomNavigationBarItem(
            title: Text(
                "Contacts",
                style: TextStyle(
                    color: _currentIndex == 1 ? Color(0xff46c01b) : Color(0xff999999)
                )
            ),
            icon: _currentIndex == 1 ? Image.asset(
                'images/contact_list_pressed.png',
                width: 32.0,
                height: 28.0
            ) : Image.asset(
                'images/contact_list_normal.png',
                width: 32.0,
                height: 28.0
            )
          ),
          BottomNavigationBarItem(
            title: Text(
                "Discover",
                style: TextStyle(
                    color: _currentIndex == 2 ? Color(0xff46c01b) : Color(0xff999999)
                )
            ),
            icon: _currentIndex == 2 ? Image.asset(
                'images/find_pressed.png',
                width: 32.0,
                height: 28.0
            ) : Image.asset(
                'images/find_normal.png',
                width: 32.0,
                height: 28.0
            )
          ),
          BottomNavigationBarItem(
            title: Text(
                "Me",
                style: TextStyle(
                    color: _currentIndex == 3 ? Color(0xff46c01b) : Color(0xff999999)
                )
            ),
            icon: _currentIndex == 3 ? Image.asset(
                'images/profile_pressed.png',
                width: 32.0,
                height: 28.0
            ) : Image.asset(
                'images/profile_normal.png',
                width: 32.0,
                height: 28.0
            )
          )
        ]
      ),
      body: currentPage()
    );
  }
}