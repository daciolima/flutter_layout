import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
            color: Color(0xFFF5F5F5),
            padding: EdgeInsets.only(top: 20, right: 20, bottom: 40, left: 20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        offset: new Offset(1, 2.0),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, right: 15, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Cadastro",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Nome",
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              )
                          ),
                          style: TextStyle(
                              fontSize: 20
                          ) ,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "email",
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              )
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )
                          ),
                          child: FlatButton(
                            child: Text("Cadastrar",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            onPressed: (){},
                          ),
                        )
                      ],
                    ),
                  )
                )
              ],
            )
        ),
      )
    );
  }
}
