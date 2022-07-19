import 'package:flutter/material.dart';

import '../models/cotizacion_list.dart';

class PageCotiView extends StatelessWidget {
  const PageCotiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Listado data = ModalRoute.of(context)?.settings.arguments as Listado;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detalle Cotización"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Card(
              child: Column(children: [
                ListTile(
                  leading: const Icon(
                    Icons.format_color_text,
                    color: Colors.red,
                  ),
                  title: Text('Nombre: ' + data.nombreCotizacion),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.format_list_bulleted,
                    color: Colors.red,
                  ),
                  title: Text('Descripcion:     ' + data.descripcion),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.price_check,
                    color: Colors.red,
                  ),
                  title: Text('Precio:    ' + data.precioTotal),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.toggle_on,
                    color: Colors.red,
                  ),
                  title: Text('Estado:    ' + data.estado),
                )
              ]),
            )
          ],
        ));
  }
}
