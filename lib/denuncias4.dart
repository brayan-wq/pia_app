import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'denuncias.dart';
import 'denuncias3.dart';
import 'login_state.dart';
import 'main.dart';
import 'second.dart';

class DenunciaFormualrio4 extends StatefulWidget {
  @override
  _DenunciaFormualrio4State createState() => _DenunciaFormualrio4State();
}

class _DenunciaFormualrio4State extends State<DenunciaFormualrio4> {
  bool monVal = false;
  TextEditingController indicacionesDetalle = TextEditingController();
  @override
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
                      padding: EdgeInsets.only(top: size.height * 0.015),
                      child: new Text(
                        "Indique la ubicacion precisa donde se hizo la denuncia:",
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
                        controller: indicacionesDetalle,
                        decoration: InputDecoration(
                            hintText: "Direccion/Barrio/Vereda/Municipio",
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
                        "Anexar evidencias fotograficas o de video",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: size.height * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.02, bottom: size.height * 0.02),
                      child: Center(
                        child: RaisedButton(
                          padding: EdgeInsets.all(size.width * 0.025),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.greenAccent[700],
                          child: Text(
                            "Subir (foto o video)",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          onPressed: _optionDialogBox,
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: new Text(
                        "Dando cumplimiento a lo dispuesto en la Ley 1581 de 2012, Por el cual se dictan disposiciones generales para la protección de datos personales y de conformidad con lo señalado en el Decreto 1377 de 2013, autorizo ​​al Observatorio Ambiental de la Amazonia a él tiramiento de mis datos personales e información suministrada única y exclusivamente para el desarrollo de la Plataforma PICADH",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: size.height * 0.018,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: size.width * 0.2,
                          right: size.width * 0.2,
                          top: size.height * 0.02,
                          bottom: size.height * 0.015),
                      child: RaisedButton(
                        padding: EdgeInsets.only(right: size.width * 0.04),
                        color: Colors.greenAccent[700],
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Checkbox(
                                value: monVal,
                                onChanged: (bool value) {
                                  setState(() {
                                    monVal = value;
                                  });
                                },
                              ),
                              Text(
                                "Acepto",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: size.height * 0.02,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ]),
                        onPressed: () {},
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
                                          new DenunciaFormualrio3()));
                            },
                            child: Text(
                              "Atras",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: size.height * 0.025,
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
                          ),
                          child: RaisedButton(
                            color: Colors.greenAccent[700],
                            onPressed: () {
                              print('${indicacionesDetalle.text} ');
                            },
                            child: Text(
                              "Enviar",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: size.height * 0.025,
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
