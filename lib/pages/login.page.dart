import 'package:flutter/material.dart';
import 'package:flutterlayout/pages/signup.page.dart';

import 'home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 40),
          child: Column(
            children: <Widget>[
              Container(
                  height: 360,
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
                    padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("Bem-vindo,",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text("Login para continuar"),
                              ],
                            ),
                            FlatButton(
                              child: Text("Cadastre-se",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                              color: Colors.orange,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SignUpPage()
                                ));
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
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
                          height: 20,
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
                        Container(
                          alignment: Alignment.centerRight,
                          height: 40,
                          child: FlatButton(
                            child: Text("Esqueceu sua senha?"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                            child: Text("Login",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            onPressed: (){

                            },
                          ),
                        )

                      ],
                    ),
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text("-- OU -- ",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).accentColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 34,
                        child: Image.asset("assets/facebook.png"),
                      ),
                      Text("Entrar com o Facebbok"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).accentColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 34,
                        child: Image.asset("assets/google.png"),
                      ),
                      Text("Entrar com o Google"),
                    ],
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
