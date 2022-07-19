import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/ordenes_list.dart';

class OrdenesProvider extends ChangeNotifier {
  final String _user = 'test';
  final String _pass = 'test..2022';
  final String _baseUrl = '157.230.213.232:8000';

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
      _baseUrl,
      'ordenes/ordenes_orden_list_rest/',
    );
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    //creearemos un mapa
    final providersMap = ListadoOrden.fromJson(response.body);
    ListadoOrdenesDisplay = providersMap.listado;
    print(ListadoOrdenesDisplay.length);
    isLoading = false;
    notifyListeners(); //notifica a los widgets cuando hay un cambio en la data
  }
}
