import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:holle_word/login_state.dart';
import 'package:holle_word/main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holle_word/denuncias3.dart';
import 'package:holle_word/denuncias.dart';

import 'second.dart';

class DenunciaFormualrio2 extends StatefulWidget {
  @override
  _DenunciaFormualrio2State createState() => _DenunciaFormualrio2State();
}

class _DenunciaFormualrio2State extends State<DenunciaFormualrio2> {
  @override
  TextEditingController responsablesDetalle = TextEditingController();
  TextEditingController alternativasDetalle = TextEditingController();

  var _listaSiNo = [
    "Si",
    "No",
  ];
  String _vista3 = "Seleccione una opción";
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Size size = MediaQuery.of(context).size;
    void _openCamera() {
      var picture = ImagePicker.pickImage(
        source: ImageSource.camera,
      );
    }

    void _openGallery() {
      var picture = ImagePicker.pickImage(
        source: ImageSource.gallery,
      );
    }

    Future<void> _optionDialogBox() {
      return showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: new Text("Tomar fotografia"),
                    onTap: _openCamera,
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: new Text("Seleccionar de galeria"),
                    onTap: _openGallery,
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return new Scaffold(
        backgroundColor: Color.fromRGBO(9, 46, 4, 10),
        body: new Stack(
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
            new Stack(children: [
              new Container(
                margin: EdgeInsets.only(top: size.height * 0.13),
                padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    right: size.width * 0.1,
                    left: size.width * 0.1),
                width: size.width,
                height: size.height * 0.87,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/fondo.png",
                        ),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: new Column(
                  children: [
                    new Container(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: new Text(
                        "Presunto (s) responsable (s) del conflicto o problema: ",
                        textAlign: TextAlign.left,
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
                        controller: responsablesDetalle,
                        decoration: InputDecoration(
                            hintText: "Nombre de la persona o empresa",
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
                        "¿Propone alguna alternativa de solución al problema?",
                        textAlign: TextAlign.left,
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
                        child: DropdownButton(
                          items: _listaSiNo.map((String a) {
                            return DropdownMenuItem(
                                value: a,
                                child: Text(
                                  a,
                                  style: TextStyle(
                                    fontSize: size.width * 0.035,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (_value) => {
                            setState(() {
                              _vista3 = _value;
                            })
                          },
                          hint: Text(
                            _vista3,
                            style: TextStyle(fontSize: size.width * 0.035),
                          ),
                        )),
                    new Container(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: new Text(
                        "De ser afirmativa la pregunta anterior cuál o alternativas de solución propone: ",
                        textAlign: TextAlign.left,
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
                        controller: alternativasDetalle,
                        decoration: InputDecoration(
                            hintText: "Descripcion...",
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
                                          new DenunciaFormualrio()));
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
                              print(
                                  '${responsablesDetalle.text} ,${alternativasDetalle.text},');

                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new DenunciaFormualrio3()));
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
                )),
              )
            ]),
          ],
        ));
  }
}
