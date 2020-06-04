import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[_pagina1(), _pagina2()]),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[_colorFondo(), _imagenFondo(), _textos()],
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(child: RaisedButton(
        onPressed: (){

        },
        textColor: Colors.white,
        color: Colors.blue,
        shape: StadiumBorder(),
        child: Padding(
          padding: EdgeInsets.symmetric( 
            horizontal: 40.0,
            vertical: 20.0
          ),
          child: Text("Bienvenidos", style:TextStyle(
            fontSize: 20.0,

          ),),
        ),
      )),
    );
  }

  Widget _colorFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage("assets/original.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(fontSize: 50, color: Colors.white);
    return SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            "11°",
            style: estiloTexto,
          ),
          Text(
            "Jueves",
            style: estiloTexto,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white, )
        ],
      ),
    );
  }
}
