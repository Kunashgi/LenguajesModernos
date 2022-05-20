import 'package:flutter/material.dart';
import '../pages/login_page.dart';

class ListViewBuilder extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "fecha": "20-05-2022",
      "name": "Juanito Perez",
      "ID": "01",
      "Estado": " Pagada"
    },
    {
      "fecha": "21-03-2021",
      "name": "Lucho giadach",
      "ID": "02",
      "Estado": " Pagada"
    },
    {
      "fecha": "14-01-2021",
      "name": "Eduardo Barrera",
      "ID": "03",
      "Estado": " En curso"
    },
    {
      "fecha": "01-12-2022",
      "name": "Tanjiro kamado",
      "ID": "04",
      "Estado": " En curso"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    builder: (BuildContext context) => LoginPage()));
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
