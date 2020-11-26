import 'package:flutter/material.dart';
import 'package:holle_word/registry.dart';
import 'package:holle_word/denuncias.dart';
import 'package:provider/provider.dart';
import 'package:holle_word/login_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginState>(
      builder: (BuildContext context) => LoginState(),
      child: MaterialApp(
        home: new Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return new Scaffold(
        backgroundColor: Colors.black,
        body: new Column(
          children: <Widget>[
            new Container(
              width: size.width,
              height: size.height * 0.13,
              padding: EdgeInsets.only(
                  top: size.height * 0.04,
                  bottom: size.width * 0.02,
                  left: size.width * 0.78,
                  right: size.width * 0.04),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/pi2.png",
                    ),
                    alignment: Alignment.topCenter),
              ),
            ),
            new Container(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                width: size.width,
                height: size.height * 0.87,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/fondo.png",
                        ),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    new Container(
                      child: new Text(
                        "PLATAFORMA DE INFORMACION AMBIENTAL",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: size.height * 0.032,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Column(children: <Widget>[
                        new Container(
                          child: new Text(
                            " Recuerde que puede realizar sus denuncias de forma anónima, pero si desea acceder a todos nuestros servicios (presentar iniciativas, modulo de educación ambiental y demás), por favor inicie sesión.    ",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 50, bottom: 0, left: 10, right: 10),
                          child: RaisedButton(
                              color: Colors.greenAccent[700],
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new DenunciaFormualrio()));
                              },
                              child: SizedBox(
                                width: size.width * 0.35,
                                height: size.height * 0.14,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.verified_user,
                                      color: Colors.white,
                                      size: size.width * 0.12,
                                    ),
                                    Text(
                                      "Anonimo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Ubuntu",
                                          fontSize: size.width * 0.05,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(60),
                          child: RaisedButton(
                              color: Colors.greenAccent[700],
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              onPressed: () {
                                var state = Provider.of<LoginState>(context);
                                if (state.isLoggedIn()) {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new DenunciaFormualrio()));
                                } else {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new Registry()));
                                }
                              },
                              child: SizedBox(
                                width: size.width * 0.35,
                                height: size.height * 0.14,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.supervised_user_circle,
                                      color: Colors.white,
                                      size: size.width * 0.13,
                                    ),
                                    Column(children: <Widget>[
                                      new Container(
                                          padding: EdgeInsets.only(
                                              top: size.height * 0.035,
                                              bottom: 0,
                                              right: 0,
                                              left: 0),
                                          child: Text(
                                            "Iniciar ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "Ubuntu",
                                                fontSize: size.width * 0.05,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          )),
                                      new Container(
                                          child: Text(
                                        "sesión",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Ubuntu",
                                            fontSize: size.width * 0.05,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )),
                                    ])
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ]),
                )),
          ],
        ));
  }
}
