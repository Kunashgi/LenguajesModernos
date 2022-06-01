import 'package:flutter/material.dart';

class Detalle_orden extends StatelessWidget {
  const Detalle_orden({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          title: Text('Detalle orden de trabajo'),
        ),
        body: ListView(
          children: <Widget>[miCard(), miCardtask(), miCardinfo()],
        ));
  }

  Card miCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('CM001'),
            subtitle: Text(
                'Creación de Mockups \nFecha:20-05-2022 \nSin fecha de término \nColaborador:Mauricio Arrieta \nResponsable:Matias Pérez \nProyecto:Creación App \nDireccion:Pedro de Valvidia 425 \nNumero: 987654321'),
            leading: Icon(Icons.info),
          ),
        ],
      ),
    );
  }

  Card miCardinfo() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Datos del cliente'),
            subtitle: Text(
                'Nombre:Juanito Pérez \nCorreo:juanito@gmail.com \nDirección:Providencia \nTeléfono:99992345'),
            leading: Icon(Icons.person),
          ),
        ],
      ),
    );
  }

  Card miCardtask() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Tareas'),
            subtitle: Text(
                'Al terminar las tareas, presentar al equipo \nRequerimientos: \nGestión de clientes \nGestión de ventas \nGestión de cotizaciones \nGestión órdenes de trabajo'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Text('Tarea realizada')),
              FlatButton(onPressed: () => {}, child: Text('Cancelar tareas'))
            ],
          )
        ],
      ),
    );
  }
}
