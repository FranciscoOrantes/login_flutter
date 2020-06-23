import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loginproject/inicio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Api {

  static String url = 'http://9307dafd7517.ngrok.io/login';

  static iniciarSesion(String usuario, String password,
      BuildContext context) async {
    Map<String, String> body = {
      'username': usuario,
      'password': password
    };

    var response = await http.post(url, body: body);

    if (response.statusCode == 200) {
      mostrarMensaje("Se ha iniciado sesion con éxito");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Inicio()));
    } else {
      mostrarMensaje("Ha ocurrido un error al iniciar sesión");
    }
  }

  static mostrarMensaje(String mensaje) {
    Fluttertoast.showToast(
        msg: mensaje,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
  }
}

