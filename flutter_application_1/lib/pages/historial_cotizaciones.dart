import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/search.dart';
import '../pages/login_page.dart';
import 'package:provider/provider.dart';
import '../providers/cotizacion_provider.dart';

class HistCotizaciones extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "fecha": "20-05-2022",
      "name": "Juanito Perez",
      "ID": "39M6-EJV8-023H",
      "Estado": " Pagada"
    },
    {
      "fecha": "21-03-2021",
      "name": "Lucho giadach",
      "ID": "EJV8-023H-39M6",
      "Estado": " Pagada"
    },
    {
      "fecha": "14-01-2021",
      "name": "Eduardo Barrera",
      "ID": "31LG-WQV8-DS32",
      "Estado": " En curso"
    },
    {
      "fecha": "01-12-2022",
      "name": "Tanjiro kamado",
      "ID": "43SA-QW44-ERT2",
      "Estado": " En curso"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<CotizacionProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial '),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
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
          itemCount: listado.ListadoCotizacionDisplay.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.delete),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Eliminar Cotización',
                      textAlign: TextAlign.center,
                    ),
                    content: Text('¿Estás seguro que deseas eliminar?'),
                    actions: [
                      TextButton(onPressed: () {}, child: Text('Si')),
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: Text('Cancelar'),
                      )
                    ],
                  ),
                );
              },
              trailing: Text(listado
                  .ListadoCotizacionDisplay[index].fechaCreacion.year
                  .toString()),
              title: Text(
                  listado.ListadoCotizacionDisplay[index].nombreCotizacion),
              subtitle: Text(listado.ListadoCotizacionDisplay[index].estado),
            );
          },
        ),
      ),
    );
  }
}
