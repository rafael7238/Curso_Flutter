import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Conteúdo"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //      floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 10,
        /*mini: true,
        child: Icon(Icons.add),
        onPressed: () {
          print("Botão pressionado");
        }*/
        icon: Icon(Icons.add_shopping_cart),
        label: Text("Adicionar"),
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.menu))
          ],
        ),
      ),
    );
  }
}
