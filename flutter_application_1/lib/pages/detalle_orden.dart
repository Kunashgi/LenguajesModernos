import 'package:flutter/material.dart';
import '../models/ordenes_list.dart';

class Detalle_orden extends StatelessWidget {
  const Detalle_orden({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Listado data = ModalRoute.of(context)?.settings.arguments as Listado;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detalle de Orden"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Card(
                child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.local_activity,
                    color: Colors.blue,
                  ),
                  title: Text(data.nombreDeActividad,
                      style: const TextStyle(fontSize: 30)),
                  subtitle: Text('Id: ' + data.id.toString(),
                      style: const TextStyle(fontSize: 17)),
                ),
              ],
            )),
            Card(
              child: Column(children: [
                ListTile(
                  leading: const Icon(
                    Icons.maps_home_work,
                    color: Colors.blue,
                  ),
                  title: const Text('Estado de Orden:'),
                  trailing: Text(
                    data.estado,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.work,
                    color: Colors.blue,
                  ),
                  title:
                      Text('Nombre del proyecto:    ' + data.nombreDelProyecto),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.date_range_outlined,
                    color: Colors.blue,
                  ),
                  title: Text(
                      'Fecha de Creación: ' + data.fechaCreacion.toString()),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people_alt,
                    color: Colors.blue,
                  ),
                  title: Text('Colaborador:    ' + data.nombreDeColaborador),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.blue,
                  ),
                  title:
                      Text('Dirección:    ' + data.direccinOLugar.toString()),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.description_outlined,
                    color: Colors.blue,
                  ),
                  title: Text('Descripción:    ' + data.descripcin.toString()),
                ),
              ]),
            ),
            Card(
                child: Column(
              children: [
                const ListTile(
                  title:
                      Text("Datos del Cliente", style: TextStyle(fontSize: 21)),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_pin,
                    color: Colors.blue,
                  ),
                  title: Text(data.correoCliente.toString()),
                ),
                ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    title: Text(data.nombreCliente,
                        style: const TextStyle(fontSize: 18))),
                ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text(data.correoCliente.toString()),
                ),
                ListTile(
                    leading: const Icon(
                      Icons.phone_android_outlined,
                      color: Colors.blue,
                    ),
                    title: Text(data.nmeroCliente.toString())),
                ListTile(
                  leading: const Icon(
                    Icons.person_pin,
                    color: Colors.blue,
                  ),
                  title: Text(data.direccinCliente.toString()),
                ),
              ],
            )),
          ],
        ));
  }
}
    /*return Scaffold(
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
*/