import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/datos_personales.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/search.dart';
import '../pages/login_page.dart';

class ListClientes extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "fecha": "20-05-2022",
      "name": "Juanito Perez",
      "ID": "01",
      "Estado": " Bloqueado",
    },
    {
      "fecha": "21-03-2021",
      "name": "Lucho giadach",
      "ID": "02",
      "Estado": " Desbloqueado"
    },
    {
      "fecha": "14-01-2021",
      "name": "Eduardo Barrera",
      "ID": "03",
      "Estado": " Bloqueado"
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
    return Scaffold(
      appBar:AppBar (actions: [
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
  
        PopupMenuButton(itemBuilder: (context)=>[
          PopupMenuItem(child: Text('Mas Antiguo')),
          PopupMenuItem(child: Text('Mas Reciente')),
          PopupMenuItem(child: Text('(Estado) Bloqueado')),
          PopupMenuItem(child: Text('(Estado) Desbloqueado')),

          
        ]),
        
        
      ],
      ),
      //====================== List View is here ===========================
      body: Container(
        child: ListView.separated(
          // To add separation line between the ListView
          separatorBuilder: (context, index) => Divider(color: Colors.grey),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => DatosPage()));
              },
              trailing: Text(products[index]["fecha"]),
              title: Text(products[index]["name"]),
              subtitle: Text(products[index]["Estado"]),
            );
          },
        ),
      ),
    );
  }
  
}
