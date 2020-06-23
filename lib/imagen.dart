import 'package:flutter/material.dart';

class Imagen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Details Page'),
        ),
        body:
        Center(child: Image(image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E1BAQEC_r2ieSieUw/company-background_10000/0?e=2159024400&v=beta&t=FN1EIxdL00UXtaQ2AWJdBirR5yTX1BS1bUGt3-2qMqI")),)
    );
  }

}