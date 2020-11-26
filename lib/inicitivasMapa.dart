import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:holle_word/inicitivas4.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:holle_word/inicitivas5.dart';

class InicitivasMapa extends StatefulWidget {
  @override
  _InicitivasMapaState createState() => _InicitivasMapaState();
}

class _InicitivasMapaState extends State<InicitivasMapa> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Size size = MediaQuery.of(context).size;

    return new Scaffold(
        backgroundColor: Color.fromRGBO(9, 46, 4, 10),
        body: new Stack(children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(100, 100),
              zoom: 1,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.05),
            padding: EdgeInsets.all(size.width * 0.05),
            decoration: BoxDecoration(
              color: Color.fromRGBO(44, 198, 19, 0.4),
            ),
            child: Text(
              "Porfavor precione (Mi ubicacion) para poder indicar desde donde se relaiza la denuncia, muchas gracias.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: size.height * 0.025,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                top: size.height * 0.89,
                left: size.width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.15,
                    height: size.height * 0.08,
                    child: new Container(
                      margin: EdgeInsets.only(
                          top: size.width * 0.025, right: size.width * 0.03),
                      child: RaisedButton(
                        color: Colors.greenAccent[700],
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      new IniciativasFormulario4()));
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.only(
                            top: size.width * 0.015,
                            bottom: size.width * 0.015),
                      ),
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(
                        top: size.width * 0.025, right: size.width * 0.03),
                    child: RaisedButton(
                      color: Colors.greenAccent[700],
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: size.width * 0.09,
                            color: Colors.white,
                          ),
                          Text(
                            "Mi ubicacion",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          )
                        ],
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(
                        size.width * 0.025,
                      ),
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
                                    new IniciativasFormulario5()));
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
              )),
        ]));
  }
}
