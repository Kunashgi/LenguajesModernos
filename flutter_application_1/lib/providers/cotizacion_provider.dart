import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/cotizacion_list.dart';

class CotizacionProvider extends ChangeNotifier {
  final String APIUSER = 'test';
  final String APIPASS = 'test..2022';
  final String BASEURL = '157.230.213.232:8000';
  List<Listado> ListadoCotizacionDisplay = [];
  Listado? selectedProduct;
  bool isLoading = true;
  bool isEditCreate = true;
  CotizacionProvider() {
    getListCotizacion();
  }
  //crearemos los métodos para consumir los endPoint

  Future getListCotizacion() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.http(
      BASEURL,
      '/cliecotis/cliecotis_cotizacion_list_rest/',
    );
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$APIUSER:$APIPASS'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    //creearemos un mapa
    final CotizacionResponse = Cotizacionlist.fromJson(response.body);
    ListadoCotizacionDisplay = CotizacionResponse.listado;
    isLoading = false;
    notifyListeners(); //notifica a los widgets cuando hay un cambio en la data
  }
}
