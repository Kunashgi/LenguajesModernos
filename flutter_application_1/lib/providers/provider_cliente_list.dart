import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/clientes_list.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class IntegrarEnd extends ChangeNotifier{
  final String _user = 'test';
  final String _pass = 'test..2022';
  final String _baseUrl = '157.230.213.232:8000';
 
 List<Listado>ListadoClienteDisplay = []; //cargaremos el listado de productos
  Listado? selectedProduct; //cargaremos el producto seleccionado
  bool isLoading = true;
  bool isEditCreate = true;
  IntegrarEnd(){
    listClientes();
    }

  Future listClientes() async{
    isLoading = true;
    notifyListeners();
    final url = Uri.http(_baseUrl, 'cliecotis/cliecotis_cliente_list_rest/',);
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url,headers: {'authorization': basicAuth});
    final providersMap = ClientesList.fromJson(response.body);
    ListadoClienteDisplay = providersMap.listado;
    print(ListadoClienteDisplay.length);
    isLoading = false;
    notifyListeners();
     } 
  }