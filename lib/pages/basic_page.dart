import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
      ]
          )
      ,
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        height: 200.0,
        image: NetworkImage(
            "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Lago 1",
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Es una imagen de un lago",
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 41.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 21.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, "Call"),
        _accion(Icons.near_me, "Route"),
        _accion(Icons.share, "Share")
      ],
    );
  }

  Widget _accion(IconData iconData, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
          child: Text(
            "Consectetur veniam cupidatat pariatur enim. Nostrud dolore sit nostrud qui fugiat. Eiusmod nisi duis Lorem proident aliquip amet. Id qui tempor minim do elit aute occaecat nostrud. Eiusmod dolore nisi non officia.",
            textAlign: TextAlign.justify,
          )),
    );
  }
}
