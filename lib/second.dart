import 'package:flutter/material.dart';
import 'package:holle_word/EducacionAmbiental.dart';
import 'package:holle_word/denuncias.dart';
import 'package:holle_word/login_state.dart';
import 'package:holle_word/main.dart';
import 'package:holle_word/iniciativas.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return new Scaffold(
        backgroundColor: Color.fromRGBO(9, 46, 4, 10),
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
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                    child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  color: Color.fromARGB(10, 10, 10, 0),
                  onPressed: () {
                    Provider.of<LoginState>(context).logout();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Home()));
                  },
                  child: Row(children: <Widget>[
                    new Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                      size: size.width * 0.09,
                    ),
                  ]),
                )),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(0),
              width: size.width,
              height: size.height * 0.87,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/fondo.png",
                      ),
                      fit: BoxFit.cover)),
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.03, bottom: 0, right: 10, left: 10),
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
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 10, left: 10, right: 10),
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
                                          new IniciativasFormulario()));
                            } else {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new IniciativasFormulario()));
                            }
                          },
                          child: SizedBox(
                            width: size.width * 0.35,
                            height: size.height * 0.14,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.description,
                                  color: Colors.white,
                                  size: size.width * 0.12,
                                ),
                                Text(
                                  "Iniciativas",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Ubuntu",
                                      fontSize: size.width * 0.045,
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
                      padding: EdgeInsets.only(
                          top: 20, bottom: 10, left: 10, right: 10),
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
                                          new IniciativasFormulario()));
                            } else {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new EducacionAmbiental()));
                            }
                          },
                          child: SizedBox(
                            width: size.width * 0.35,
                            height: size.height * 0.14,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.collections_bookmark,
                                  color: Colors.white,
                                  size: size.width * 0.12,
                                ),
                                Column(children: <Widget>[
                                  new Container(
                                      padding: EdgeInsets.only(
                                          top: size.height * 0.045,
                                          bottom: 0,
                                          right: 0,
                                          left: 0),
                                      child: Text(
                                        "Educación ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Ubuntu",
                                            fontSize: size.width * 0.04,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )),
                                  new Container(
                                      child: Text(
                                    "Ambiental",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Ubuntu",
                                        fontSize: size.width * 0.04,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 10, left: 10, right: 10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.assignment_late,
                                  color: Colors.white,
                                  size: size.width * 0.11,
                                ),
                                Text(
                                  "Denuncias",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Ubuntu",
                                      fontSize: size.width * 0.045,
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
                      padding: EdgeInsets.only(
                          top: 20, bottom: 10, left: 10, right: 10),
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
                                          new IniciativasFormulario()));
                            } else {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new EducacionAmbiental()));
                            }
                          },
                          child: SizedBox(
                            width: size.width * 0.35,
                            height: size.height * 0.14,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.web,
                                  color: Colors.white,
                                  size: size.width * 0.12,
                                ),
                                Column(children: <Widget>[
                                  new Container(
                                      padding: EdgeInsets.only(
                                          top: size.height * 0.045,
                                          bottom: 0,
                                          right: 0,
                                          left: 0),
                                      child: Text(
                                        "Ir a sitio ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Ubuntu",
                                            fontSize: size.width * 0.05,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )),
                                  new Container(
                                      child: Text(
                                    "web",
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
            ),
          ],
        ));
  }
}
