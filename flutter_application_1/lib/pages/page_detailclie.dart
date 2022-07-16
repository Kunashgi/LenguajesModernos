import 'package:flutter/material.dart';

import '../models/clientes_list.dart';

class PageClieView extends StatelessWidget {
  const PageClieView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Listado data = ModalRoute.of(context)?.settings.arguments as Listado;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ver Cliente"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Card(
              child: Column(children: [
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  title: Text('Nombre: ' + data.nombreCliente),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  title: Text('Apellido:     ' + data.apellidoCliente),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.red,
                  ),
                  title: Text('Correo:    ' + data.gmail),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.maps_home_work,
                    color: Colors.red,
                  ),
                  title: Text('Dirección:    ' + data.direccion),
                ),ListTile(
                  leading: const Icon(
                    Icons.credit_card,
                    color: Colors.red,
                  ),
                  title: Text('RUT:    ' + data.rutCliente),
                ),ListTile(
                  leading: const Icon(
                    Icons.toggle_on,
                    color: Colors.red,
                  ),
                  title: Text('Estado:    ' + data.estadoCliente),
                )
              ]),
            )
          ],
        ));
  }
}