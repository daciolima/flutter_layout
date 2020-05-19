import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlayout/widgets/category/category-list.widget.dart';
import 'package:flutterlayout/widgets/product/product-list.widget.dart';
import 'package:flutterlayout/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          color: Color(0xffF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text("Categorias",
              style: TextStyle(
                fontSize: 20
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Mais vendidos",
                  style: TextStyle(
                    fontSize: 30
                  )),
                  FlatButton(
                    child: Text("Ver todos"),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                child: ProductList(scrollDirection: Axis.horizontal),
              )
            ],
          ),
        ),
      ),
    );
  }
}

