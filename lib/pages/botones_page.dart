import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _fondoApp(),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _titulos(),
              _botonesRedondeados(),
              
            ],
          ),
        )
      ],
    ),
    bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today, size: 30.0 ), title: Container()),
BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outlined , size: 30.0), title: Container()),
BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle , size: 30.0), title: Container()),
        ] ,
      ),
      data: Theme.of(context).copyWith(
canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
primaryColor: Colors.pinkAccent,
textTheme: Theme.of(context).textTheme.copyWith(
  caption: TextStyle(
    color: Color.fromRGBO(116, 117, 155, 1.0)
  )
)

    ));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241 , 142, 172, 1.0),
            ]
          ),
            borderRadius: BorderRadius.circular(80.0), color: Colors.pink),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(child: cajaRosa, top : -100) ,],
    );
  }

  Widget _titulos() {
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classity Transaction',  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(
              height: 10.0,
            ),
          Text('Classity new transasasasasa' , style: TextStyle(fontSize: 18.0,  color: Colors.white)),
          ],
          
        ),
      ),
    );
  }

  Widget _botonesRedondeados() {
    int i = 1;
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.swap_calls, "Texto ${i++}"),
            _crearBotonRedondeado(Colors.green, Icons.theaters, "Texto ${i++}"),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.grey, Icons.time_to_leave, "Texto ${i++}"),
            _crearBotonRedondeado(Colors.lightBlueAccent, Icons.timer_3, "Texto ${i++}"),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.lightGreenAccent, Icons.swap_vertical_circle, "Texto ${i++}"),
            _crearBotonRedondeado(Colors.orange, Icons.tab, "Texto ${i++}"),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.redAccent, Icons.tap_and_play, "Texto ${i++}"),
            _crearBotonRedondeado(Colors.yellow, Icons.text_rotation_down, "Texto ${i++}"),
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado( Color color, IconData icon, String texto ) {
    return ClipRect(
          child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0
          ),
            child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.pinkAccent,
                child: Icon( icon , color: color, ),
              ),
              Text( texto , style: TextStyle(color: color) ,
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
