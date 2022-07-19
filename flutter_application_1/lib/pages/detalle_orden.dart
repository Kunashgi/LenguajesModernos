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
    var titulo = 'Creacion de Mockups';
    var estado = 'Activo';
    var inicio = '08-04-2022';
    var finalizacion = '30-05-2022';
    var colaborador = 'Mauricio Arrieta';
    var responsable = 'Matias Pérez';
    var proyecto = 'Creación App';
    var direccion = 'Providencia 425';
    var telefono = '988944902';

    //se crea el texto a utilizar en subtitle con los datos desde backend
    var datofinal = (titulo +
        "\nEstado: " +
        estado +
        "\nInicio: " +
        inicio +
        "\nFinalización: " +
        finalizacion +
        "\nColaborador: " +
        colaborador +
        "\nResponsable: " +
        responsable +
        "\nProyecto: " +
        proyecto +
        "\nDirección: " +
        direccion +
        "\nTeléfono: " +
        telefono);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      color: Color.fromARGB(255, 15, 190, 202),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('CM001'),
            subtitle: Text(datofinal),
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