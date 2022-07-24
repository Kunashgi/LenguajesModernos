import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';

import 'devolucion.dart';

class ventaDetail extends StatelessWidget {
  List<Map> products = [
    {
      "fecha": "20-05-2022",
      "name": "Juanito Perez",
      "ID": "39M6-EJV8-023H",
      "Estado": " Pagada"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle de la venta"),
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
              Text("Estado: ", style: TextStyle(fontSize: 20)),
              Text(products[0]["Estado"], style: TextStyle(fontSize: 20)),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            child: CustomButtonAlert(Texto: "Generar devolución"),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            child: CustomButtonAlert2(Texto: "Descargar boleta"),
          ),
        ],
      )),
    );
  }
}

class CustomButtonAlert extends StatelessWidget {
  final String Texto;
  const CustomButtonAlert({
    Key? key,
    required this.Texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Generar devolucion'),
                        content: const Text(
                            'Estas seguro que deseas generar la devolucion'),
                        actions: [
                          FlatButton(
                            child: Text('Si'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Devolucion(),
                                  ));
                            },
                          ),
                          FlatButton(
                            child: Text('No'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(Texto),
              ),
            )));
  }
}

class CustomButtonAlert2 extends StatelessWidget {
  final String Texto;
  const CustomButtonAlert2({
    Key? key,
    required this.Texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Descargar Boleta'),
                        content: const Text('Desea descargar la boleta'),
                        actions: [
                          FlatButton(
                            child: Text('Si'),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Text('No'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(Texto),
              ),
            )));
  }
}
