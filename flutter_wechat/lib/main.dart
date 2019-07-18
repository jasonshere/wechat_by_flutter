import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'search.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'wechat',
    theme: mDefaultTheme,
    routes: <String, WidgetBuilder>{
      "app": (BuildContext context) => App(),
      "friends": (_) => WebviewScaffold(
        url: "https://weixin.qq.com",
        appBar: AppBar(
          title: Text("Discover")
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
      "search": (BuildContext context) => Search()
    },
    home: LoadingPage()
  )
);

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xffebebeb),
  cardColor: Color(0xff393a3f),
);