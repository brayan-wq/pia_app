import 'package:flutter/material.dart';
import 'package:holle_word/iniciativas2.dart';
import 'package:holle_word/main.dart';
import 'package:provider/provider.dart';
import 'package:holle_word/login_state.dart';
import 'package:holle_word/second.dart';

class IniciativasFormulario extends StatefulWidget {
  IniciativasFormulario({Key key}) : super(key: key);

  @override
  _IniciativasFormularioState createState() => _IniciativasFormularioState();
}

class _IniciativasFormularioState extends State<IniciativasFormulario> {
  TextEditingController titulo = TextEditingController();
  TextEditingController descripcionIniciativa = TextEditingController();
  String tipoComunidadBeneficiada = "Seleccione una opción";
  var _listaComunidad = [
    "Cultura Ciudadana Ambiental",
    "Eco-turismo",
    "Educación Ambiental",
    "Reforestación",
    "Seguridad Alimentaria",
  ];
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
                  child: new Column(children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 30,
                          bottom: 0,
                          right: size.width * 0.07,
                          left: size.width * 0.07),
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                              "Formulario de Iniciativas Ambientales",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(top: size.height * 0.02),
                            child: new Text(
                              "Titulo de la inicitiva",
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent[700],
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              controller: titulo,
                              decoration: InputDecoration(
                                  hintText: "Título...",
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
                              "Descripción de la iniciativa:",
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent[700],
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              controller: descripcionIniciativa,
                              decoration: InputDecoration(
                                  hintText: "Descripción...",
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                              },
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(top: size.height * 0.02),
                            child: new Text(
                              "Comunidad a la que beneficia la Iniciativa:",
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent[700],
                                  borderRadius: BorderRadius.circular(25)),
                              child: DropdownButton(
                                items: _listaComunidad.map((String a) {
                                  return DropdownMenuItem(
                                      value: a,
                                      child: Text(
                                        a,
                                        style: TextStyle(
                                          fontSize: size.width * 0.032,
                                        ),
                                      ));
                                }).toList(),
                                onChanged: (_value) => {
                                  setState(() {
                                    tipoComunidadBeneficiada = _value;
                                  })
                                },
                                hint: Text(
                                  tipoComunidadBeneficiada,
                                  style:
                                      TextStyle(fontSize: size.width * 0.032),
                                ),
                              )),
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
                                                new Second()));
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
                                            builder: (context) =>
                                                new Second()));
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
                                                new IniciativasFormulario2()));
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
                )),
          ],
        ));
  }
}
