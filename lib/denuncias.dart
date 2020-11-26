import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:holle_word/second.dart';
import 'package:provider/provider.dart';
import 'package:holle_word/login_state.dart';
import 'package:holle_word/main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holle_word/denuncias2.dart';

class DenunciaFormualrio extends StatefulWidget {
  @override
  _DenunciaFormualrioState createState() => _DenunciaFormualrioState();
}

class _DenunciaFormualrioState extends State<DenunciaFormualrio> {
  @override
  TextEditingController descripcionDetalle = TextEditingController();
  TextEditingController controladorD2 = TextEditingController();
  String valor = '';

  var _listaAsistencia = [
    "Asistencia Jurídica",
    "Asistencia Técnica",
    "Asistencia Educativa",
    "Todas las anteriores",
  ];
  var _listaProblema = [
    "Inasistencia educativa - Derechos humanos",
    "Acaparamiento de tierras - Agrario",
    "Secuestro - Derechos humanos",
    "Vertimientos - Socioambiental",
    "Quemas - Socioambiental",
    "Deforestación - Socioambiental",
    "Tráfico de fauna silvestre - Socioambiental",
    "Vulneración a grupos étnicos - Derechos humanos",
    "Reclutamiento de menores - Derechos humanos",
    "Proyectos de infraestructura - Socioambiental",
    "Ganaderia extensiva - Socioambiental",
    "Conflictos por daños de animales - Agrario",
    "Desaparición forzada - Derechos humanos",
    "Minería - Socioambiental",
    "Residuos sólidos - Socioambiental",
    "Inadecuado uso de los suelos - Agrario",
    "Material de arrastre o de playa - Socioambiental",
    "Cultivos de uso ilícito - Agrario",
    "Linderos - Agrario",
    "Petróleo - Socioambiental",
  ];
  String idDetalle = "Seleccione una opción";
  String apoyoDetalle = "Seleccione una opción";

  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Size size = MediaQuery.of(context).size;

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
                      child: new Text(
                        "Registro de Denuncia Ambiental",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: size.height * 0.037,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: new Text(
                        "Descripción del problema o conflicto: ",
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
                        controller: descripcionDetalle,
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
                    new Container(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: new Text(
                        "¿Qué tipo de problema o conflicto es? ",
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
                          items: _listaProblema.map((String a) {
                            return DropdownMenuItem(
                                value: a,
                                child: Text(
                                  a,
                                  style: TextStyle(
                                    fontSize: size.width * 0.026,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (_value) => {
                            setState(() {
                              idDetalle = _value;
                            })
                          },
                          hint: Text(
                            idDetalle,
                            style: TextStyle(fontSize: size.width * 0.026),
                          ),
                        )),
                    new Container(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: new Text(
                        "¿Requiere asistencia para afrontar     el problema? ",
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
                          items: _listaAsistencia.map((String a) {
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
                              apoyoDetalle = _value;
                            })
                          },
                          hint: Text(
                            apoyoDetalle,
                            style: TextStyle(fontSize: size.width * 0.035),
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
                                      builder: (context) => new Second()));
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
                                  '${descripcionDetalle.text} ,${idDetalle}, ,${apoyoDetalle}');
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new DenunciaFormualrio2()));
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
