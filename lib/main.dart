import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  Widget androidLayout() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {
        print("Android RaisedButton pressed");
      },
      child: Text(
        "Android Raised Button",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget iosLayout() {
    return CupertinoButton(
      color: Colors.red,
      child: Text("iOS Cupertino Button",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        print("iOS Cupertino Button pressed");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iOS and Android Application"),
        centerTitle: true,
      ),
      body: Theme
          .of(context)
          .platform == TargetPlatform.android
          ?
      androidLayout()
          :
      iosLayout()
      ,
    );
  }
}
