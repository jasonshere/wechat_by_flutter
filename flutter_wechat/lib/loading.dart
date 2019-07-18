import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _LoadingPageState();

}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      print("Loading Page start....");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("images/loading.jpg"),
    );
  }

}