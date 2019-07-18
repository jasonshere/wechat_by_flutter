import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final items = new List<String>.generate(5, (i) => "This is Chinese News $i");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        textTheme: TextTheme(),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Color(0xff000000)
        ),
        title: Text(
          "Search",
          style: TextStyle(
            color: Color(0xff000000)
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixStyle: TextStyle(
                    color: Color(0xff999999),
                  ),
                  suffixIcon: Icon(Icons.keyboard_voice),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff999999),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none
                ),
                style: TextStyle(
                  color: Color(0xff999999),
                  fontSize: 20.0
                ),
              )
            ),
            Expanded(
              flex: 2,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 3.0,
                childAspectRatio: 2.5,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("Moments");
                    },
                    child: Text(
                      'Moments',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 16.0
                      ),
                    )
                  ),
                  GestureDetector(
                    child: Text(
                      'Articles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0
                      ),
                    )
                  ),
                  GestureDetector(
                    child: Text(
                      'Official Accounts',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0
                      ),
                    )
                  ),
                  GestureDetector(
                    child: Text(
                      'Mini Programs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0
                      ),
                    )
                  ),
                  GestureDetector(
                    child: Text(
                      'Music',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0
                      ),
                    )
                  ),
                  GestureDetector(
                    child: Text(
                      'Stickers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0
                      ),
                    )
                  )
                ],
              )
            ),
            Flexible(
              flex: 7,
              child: SizedBox(
                height: 355.0,
                child: Card(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  elevation: 0.0,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          index == 0 ? Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    'WeChat Top Topics',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xff999999)
                                    ),
                                  ),
                                ),
                                index != items.length -1 ? Divider(height: 1.0,) : Divider(
                                  color: Colors.white,
                                  height: 0.0,
                                ),
                              ]
                          ) : Container(height: 0.0),
                          SizedBox(
                            height: 58.0,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    '${items[index]}',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                index != items.length -1 ? Divider(height: 1.0,) : Divider(
                                    color: Colors.white,
                                    height: 0.0,
                                ),
                              ]
                            )
                          ),
                        ],
                      );
                    }
                  )
                )
              ),
            )
          ],
        )
      )
    );
  }
}