import 'package:flutter/material.dart';
import 'package:loginproject/imagen.dart';
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello flutter!'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network("https://media-exp1.licdn.com/dms/image/C4E1BAQEC_r2ieSieUw/company-background_10000/0?e=2159024400&v=beta&t=FN1EIxdL00UXtaQ2AWJdBirR5yTX1BS1bUGt3-2qMqI"),
                  Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
                      child: Text(
                        "Foto con animación Hero",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w400),
                      )),
                  Text("Aqui va la descripción de la imagen",
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,

                  ),

                  ButtonBar(
                    buttonPadding: EdgeInsets.only(bottom: 2.0,right: 8.0),

                    children: <Widget>[

                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Imagen()));
                          },
                          child: Text(
                            'Ver más'.toUpperCase(),
                            style: TextStyle(color: Color(0xFF2EBD59)),
                            textAlign: TextAlign.right,
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}