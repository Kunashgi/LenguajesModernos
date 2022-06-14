import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/venta_detalle.dart';
import 'package:flutter_application_1/pages/search.dart';
import '../pages/login_page.dart';

class ListVentas extends StatelessWidget {
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
      "name": "Maria Lopez",
      "ID": "EJV8-023H-39M6",
      "Estado": "Pagada"
    },
    {
      "fecha": "14-01-2021",
      "name": "Elena Lopez",
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
    return Scaffold(
      appBar:AppBar (title: const Text("Ventas",style: TextStyle(fontSize: 18),),actions: [
        IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          showSearch(context: context, delegate: CustomSearchDelegate());
        },

        ),
  
        PopupMenuButton(itemBuilder: (context)=> const [
          PopupMenuItem(child: Text('Mas Antiguo')),
          PopupMenuItem(child: Text('Mas Reciente')),
          PopupMenuItem(child: Text('(Estado) Pagada')),
          PopupMenuItem(child: Text('(Estado) En Curso')),
          
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
                    builder: (BuildContext context) => ventaDetail()));
              },
              trailing: Text(products[index]["fecha"]),
              title: Text(products[index]["ID"]),
              subtitle: Text(products[index]["Estado"]),
            );
          },
        ),
      ),
    );
  }
  
}

