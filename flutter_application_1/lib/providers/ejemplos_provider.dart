import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class IntegrarEnd extends ChangeNotifier{
  String APIUSER = 'test';
  String APIPASS = 'test..2022';
  String BASEURL = '';

  IntegrarEnd(){
    print("inicializado");
    getListClientes();
    
  }
  getListClientes()async{
    var url = Uri.http(BASEURL,'cliecotis/cliecotis_cliente_list_rest/',);
    String basicAuth = 'Basic'+base64Encode(utf8.encode('$APIUSER:$APIPASS'));
    final response = await http.get(url,headers: {'authorization':basicAuth});

    final Map<String,dynamic> dataDecode = json.decode(response.body);
    print(dataDecode['Listado']);
  }


  
}