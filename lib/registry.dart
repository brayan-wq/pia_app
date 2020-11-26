import 'package:flutter/material.dart';
import 'package:holle_word/login_state.dart';
import 'package:holle_word/main.dart';
import 'package:holle_word/registry2.dart';
import 'package:provider/provider.dart';

import 'second.dart';

class Registry extends StatefulWidget {
  @override
  _RegistryState createState() => _RegistryState();
}

class _RegistryState extends State<Registry> {
  bool monVal = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
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
            new Stack(
              children: [
                new Container(
                    margin: EdgeInsets.only(top: size.height * 0.13),
                    padding: EdgeInsets.only(
                        top: 20, bottom: 10, right: 10, left: 10),
                    width: size.width,
                    height: size.height * 0.87,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "images/fondo.png",
                            ),
                            fit: BoxFit.cover)),
                    child: SingleChildScrollView(
                        child: Column(
                      children: <Widget>[
                        Column(children: <Widget>[
                          new Container(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 0, right: 0, left: 0),
                              child: Text(
                                "INICIO ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              )),
                          new Container(
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 10, right: 0, left: 0),
                              child: Text(
                                "DE SESION",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              )),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: size.width * 0.02),
                              child: new Text(
                                "Si no tienes una cuenta",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                                child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new Registry2()));
                              },
                              child: Text(
                                "Registrate aquí",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              color: Colors.greenAccent[700],
                            )),
                          ],
                        ),
                        RoundedField(
                          hintText: "Tu email",
                          onChanged: (context) {},
                        ),
                        TextFielContainer(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Contraseña",
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.greenAccent[100],
                                ),
                                border: InputBorder.none,
                                suffixIcon: Icon(Icons.visibility,
                                    color: Colors.greenAccent[100])),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 30,
                                        bottom: 20,
                                        left: 10,
                                        right: 10),
                                    child: RaisedButton(
                                        color: Colors.green[800],
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new Home()));
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "Atras",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: "Ubuntu",
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.red[50]),
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
                                        top: 30,
                                        bottom: 20,
                                        left: 10,
                                        right: 10),
                                    child: RaisedButton(
                                        color: Colors.green[800],
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new Second()));
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "Iniciar",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: "Ubuntu",
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 40, left: 10, right: 0),
                            ),
                            Container(
                              child: new Text(
                                "Iniciar sesion con Google",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
                            RaisedButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                color: Color.fromARGB(10, 10, 10, 0),
                                onPressed: () {
                                  Provider.of<LoginState>(context).login();
                                },
                                child: SizedBox(
                                  width: size.width * 0.12,
                                  height: size.width * 0.12,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Image.asset("images/G.png")
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: size.width * 0.1,
                              right: size.width * 0.1,
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
                                    "Acepto términos y condiciones ",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ]),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ))),
              ],
            )
          ],
        ));
  }
}

class TextFielContainer extends StatelessWidget {
  final Widget child;
  const TextFielContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.greenAccent[700],
          borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}

class RoundedField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedField({
    Key key,
    this.hintText,
    this.onChanged,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
        child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.greenAccent[100],
          ),
          hintText: hintText,
          border: InputBorder.none),
    ));
  }
}
