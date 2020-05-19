import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  final String image;
  final String title;
  final String description;
  final double price;

  ProductPage({
    @required this.title,
    @required this.image,
    @required this.price,
    @required this.description}
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget> [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(image,
                  width: double.infinity,
                  fit: BoxFit.fitWidth),
              ),
            )
          ];

        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(description),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Detalhes",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. "
                  "O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano "
                  "de 1500.",
              ),
            ),
          ],
        )
      )
    );
  }
}
