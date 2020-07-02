import 'package:flutter/material.dart';
import 'package:ozer_aydin/Utility/extention.dart';

class Homelist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildList();
  }
}



Widget buildList() => ListView(
  children: [
    tile('Coding with', 'C#, Dart, Php, Javascript, Pl/Sql', Icons.keyboard),
    tile('Database', 'MsSql, MySql, Sap Hana, SqLite', Icons.storage),
    tile('Cross Platform', 'Flutter, React Native', Icons.swap_horiz),
    tile('Frotend', 'Reactjs, Angularjs, Jquery, Html, Css', Icons.web),
    tile('Erp', 'Sap Business One', Icons.multiline_chart),
    Divider(),
    tileWithSite('Blogging', 'ozeraydin.com', Icons.http, true),
    tileWithSite('Github', 'github.com/ozeraydin57', Icons.code, true),
    tileWithEmail('Contact', 'ozeraydin57@gmail.com', Icons.email, true),
  ],
);

ListTile tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title, style: TextStyle()),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}

ListTile tileWithSite(String title, String subtitle, IconData icon, bool withWww) {
  return ListTile(
    onTap: () async {
      subtitle.goToWeb;
    },
    title: Text(title, style: TextStyle()),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.red,
    ),
  );
}

ListTile tileWithEmail(String title, String subtitle, IconData icon, bool withWww) {
  return ListTile(
    onTap: () async {
      subtitle.goToEmail;
    },
    title: Text(title, style: TextStyle()),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.greenAccent,
    ),
  );
}