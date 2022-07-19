import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';

class Devolucion extends StatelessWidget {
  List<Map> products = [
    {
      "fecha": "16-06-2022",
      "name": "Kevin De Bruyne",
      "ID": "39M6-EJV8-023H",
      "Estado": " Reembolsado"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Devolución"),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            child: Row(children: [
              Text("Fecha: ", style: TextStyle(fontSize: 20)),
              Text(products[0]["fecha"], style: TextStyle(fontSize: 20)),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            child: Row(children: [
              Text("Nombre: ", style: TextStyle(fontSize: 20)),
              Text(products[0]["name"], style: TextStyle(fontSize: 20)),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            child: Row(children: [
              Text("ID: ", style: TextStyle(fontSize: 20)),
              Text(products[0]["ID"], style: TextStyle(fontSize: 20)),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            child: Row(children: [
              Text("Estado de la devolución: ", style: TextStyle(fontSize: 20)),
              Text(products[0]["Estado"], style: TextStyle(fontSize: 20)),
            ]),
          ),
        ],
      )),
    );
  }
}
