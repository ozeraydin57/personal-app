import 'package:flutter/material.dart';
import 'package:ozer_aydin/widgets/home_header.dart';
import 'package:ozer_aydin/widgets/home_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Özer Aydın Blog",
      home: Scaffold(
          body: Column(
        children: <Widget>[
          SafeArea(
            child: HomeHeader(),
          ),
          Divider(),
          Expanded(
            child: Homelist(),
          )
        ],
      )),
    );
  }
}
