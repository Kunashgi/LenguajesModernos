import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/search.dart';
import 'package:provider/provider.dart';
import '../pages/login_page.dart';
import '../pages/detalle_orden.dart';
import '../pages/crear_ordenes.dart';
import 'package:flutter_application_1/providers/ordenes_provider.dart';

class ListOrdenes extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "id": "CM001",
      "estado": "abierta",
      "inicio": "06-05-2022",
      "fin": "sin fecha de término",
      "colaborador": "Claudio Collao",
      "proyecto": "Creacion App"
    },
    {
      "id": "CD003",
      "estado": "abierta",
      "inicio": "20-05-2022",
      "fin": "01-06-2022",
      "colaborador": "Mauricio Arrieta",
      "proyecto": "Entregas"
    },
    {
      "id": "CD004",
      "estado": "abierta",
      "inicio": "20-05-2022",
      "fin": "01-06-2022",
      "colaborador": "Miguel Loza",
      "proyecto": "Entregas"
    },
    {
      "id": "CD005",
      "estado": "abierta",
      "inicio": "20-05-2022",
      "fin": "01-06-2022",
      "colaborador": "Marco Iglesias",
      "proyecto": "Entregas"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<OrdenesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text('Mas Antiguo')),
                    PopupMenuItem(child: Text('Mas Reciente')),
                    PopupMenuItem(child: Text('(Estado) Finalizada')),
                    PopupMenuItem(child: Text('(Estado) En Curso')),
                  ]),
        ],
      ),
      //====================== List View is here ===========================
      body: Container(
        child: ListView.separated(
          // To add separation line between the ListView
          separatorBuilder: (context, index) => Divider(color: Colors.grey),
          itemCount: /*products.length,*/ listado.ListadoOrdenesDisplay.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Detalle_orden()));
              },
              trailing: Text(listado.ListadoOrdenesDisplay[index].fechaCreacion
                  .toString()),
              title:
                  Text(listado.ListadoOrdenesDisplay[index].nombreDeActividad),
              /*(products[index]["id"])*/
              subtitle: Text(products[index]["estado"]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => CrearOrdenes()));
          // Add your onPressed code here!
        },
        label: const Text('Agregar'),
        icon: const Icon(Icons.add_box_outlined),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
