import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Inicio"),
          ),
          ListTile(
            title: Text("Favoritos"),
          ),
        ],
      ),
    );
  }
}
