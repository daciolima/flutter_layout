import 'package:flutter/material.dart';
import 'package:flutterlayout/pages/cart.page.dart';
import 'package:flutterlayout/pages/home.page.dart';
import 'package:flutterlayout/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          CartPage(),
          LoginPage()
        ],
      ),
      bottomNavigationBar: new TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: new Icon(Icons.shopping_cart),
              text: "Cart",
            ),
            Tab(
              icon: new Icon(Icons.perm_identity),
              text: "Login",
            ),

          ],

          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Theme.of(context).primaryColor,

      )
    );
  }
}
