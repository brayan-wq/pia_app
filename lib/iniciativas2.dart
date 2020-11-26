import 'package:flutter/material.dart';
import 'package:holle_word/iniciativas.dart';
import 'package:holle_word/iniciativas3.dart';
import 'package:holle_word/main.dart';
import 'package:provider/provider.dart';
import 'package:holle_word/login_state.dart';
import 'package:holle_word/second.dart';

class IniciativasFormulario2 extends StatefulWidget {
  IniciativasFormulario2({Key key}) : super(key: key);

  @override
  _IniciativasFormulario2State createState() => _IniciativasFormulario2State();
}

class _IniciativasFormulario2State extends State<IniciativasFormulario2> {
  TextEditingController justificacion = TextEditingController();
  TextEditingController cantidad_Personas = TextEditingController();
  TextEditingController numeroEtapas = TextEditingController();
  TextEditingController etapa = TextEditingController();

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
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: 30, bottom: 0, right: 10, left: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 5),
                          child: new Text(
                            "Justificación ¿Por qué?",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.height * 0.025,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[700],
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            controller: justificacion,
                            decoration: InputDecoration(
                                hintText: " Justificación...",
                                border: InputBorder.none),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 5),
                          child: new Text(
                            "Cantidad de personas impactadas:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.height * 0.025,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[700],
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            controller: cantidad_Personas,
                            decoration: InputDecoration(
                                hintText: " Cantidad (en muneros)...",
                                border: InputBorder.none),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 5),
                          child: new Text(
                            "Número de etapas:",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.height * 0.025,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[700],
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            controller: numeroEtapas,
                            decoration: InputDecoration(
                                hintText: " Cantidad (en muneros)...",
                                border: InputBorder.none),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 5),
                          child: new Text(
                            "Etapa en la que se encuentra:",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.height * 0.025,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[700],
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            controller: etapa,
                            decoration: InputDecoration(
                                hintText: " Cantidad (en muneros)...",
                                border: InputBorder.none),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Container(
                              margin: EdgeInsets.only(
                                  top: size.width * 0.025,
                                  right: size.width * 0.05),
                              child: RaisedButton(
                                color: Colors.greenAccent[700],
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new IniciativasFormulario()));
                                },
                                child: Text(
                                  "Atras",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.only(
                                    left: size.width * 0.03,
                                    right: size.width * 0.03,
                                    top: size.width * 0.035,
                                    bottom: size.width * 0.035),
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(
                                  top: size.width * 0.025,
                                  right: size.width * 0.05),
                              child: RaisedButton(
                                color: Colors.greenAccent[700],
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => new Second()));
                                },
                                child: Icon(
                                  Icons.home,
                                  size: size.width * 0.12,
                                  color: Colors.white,
                                ),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.only(
                                    top: size.width * 0.01,
                                    bottom: size.width * 0.01),
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(
                                top: size.width * 0.025,
                              ),
                              child: RaisedButton(
                                color: Colors.greenAccent[700],
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new IniciativasFormulario3()));
                                },
                                child: Text(
                                  "siguiente",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.only(
                                    left: size.width * 0.03,
                                    right: size.width * 0.03,
                                    top: size.width * 0.035,
                                    bottom: size.width * 0.035),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ],
        ));
  }
}
