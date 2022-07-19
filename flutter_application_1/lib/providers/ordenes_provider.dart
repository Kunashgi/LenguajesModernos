import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/ordenes_list.dart';

class OrdenesProvider extends ChangeNotifier {
  final String APIUSER = 'test';
  final String APIPASS = 'test..2022';
  final String BASEURL = '157.230.213.232:8000';
  List<Listado> ListadoOrdenesDisplay = [];
  Listado? selectedProduct;
  bool isLoading = true;
  bool isEditCreate = true;
  OrdenesProvider() {
    getListOrdenes();
  }
  //crearemos los métodos para consumir los endPoint

  /*getListOrden() async {
    var url = Uri.http(
      BASEURL,
      '/ordenes/ordenes_orden_list_rest/',
    );
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$APIUSER:$APIPASS'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    final Map<String, dynamic> dataDecode = json.decode(response.body);
    print(dataDecode['Listado']);
  }*/

  Future getListOrdenes() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.http(
      BASEURL,
      '/ordenes/ordenes_orden_list_rest/',
    );
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$APIUSER:$APIPASS'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    //creearemos un mapa
    final OrdenResponse = ListadoOrden.fromJson(response.body);
    ListadoOrdenesDisplay = OrdenResponse.listado;
    isLoading = false;
    notifyListeners(); //notifica a los widgets cuando hay un cambio en la data
    print(OrdenResponse.listado[1234].nombreDeActividad);
  }
}
