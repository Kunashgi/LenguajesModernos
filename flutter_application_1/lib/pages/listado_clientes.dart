import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/clientes_list.dart';
import 'package:flutter_application_1/pages/datos_personales.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/search.dart';
import 'package:flutter_application_1/providers/provider_cliente_list.dart';
import 'package:provider/provider.dart';
import '../pages/login_page.dart';
import '../pages/page_detailclie.dart';

class ListClientes extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "fecha": "22-06-2022",
      "name": "Juanito Perez",
      "ID": "01",
      "Estado": " Bloqueado",
    },
    {
      "fecha": "21-06-2022",
      "name": "Alberto Gonzalez",
      "ID": "02",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "14-07-2022",
      "name": "Eduardo Barrera",
      "ID": "03",
      "Estado": " Bloqueado"
    },
    {
      "fecha": "13-07-2022",
      "name": "Tanjiro kamado",
      "ID": "04",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "08-07-2022",
      "name": "Ignacio Gonzalez",
      "ID": "05",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "01-12-2022",
      "name": "Nicolas Gonzalez",
      "ID": "04",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "01-12-2022",
      "name": "Tanjiro kamado",
      "ID": "04",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "01-12-2022",
      "name": "Tanjiro kamado",
      "ID": "04",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "01-12-2022",
      "name": "Tanjiro kamado",
      "ID": "04",
      "Estado": " Desbloqueado"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<IntegrarEnd>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => RegisterPage()));
            },
          ),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text('Fecha Creada')),
                    PopupMenuItem(child: Text('Rango de Fechas'))
                  ]),
        ],
      ),
      //====================== List View is here ===========================
      body: Container(
        child: ListView.separated(
          // To add separation line between the ListView
          separatorBuilder: (context, index) => Divider(color: Colors.grey),
          itemCount: listado.ListadoClienteDisplay.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.pushNamed(context, 'detalleclie',
                    arguments: listado.ListadoClienteDisplay[index]);
              },
              trailing: Text(products[index]["fecha"]),
              title: Text(listado.ListadoClienteDisplay[index].rutCliente),
              subtitle:
                  Text(listado.ListadoClienteDisplay[index].estadoCliente),
            );
          },
        ),
      ),
    );
  }
}
