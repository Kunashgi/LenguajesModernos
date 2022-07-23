// To parse this JSON data, do
//
//     final listadoOrden = listadoOrdenFromMap(jsonString);

import 'dart:convert';

class ListadoOrden {
  ListadoOrden({
    required this.listado,
  });

  List<Listado> listado;

  factory ListadoOrden.fromJson(String str) =>
      ListadoOrden.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListadoOrden.fromMap(Map<String, dynamic> json) => ListadoOrden(
        listado:
            List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class Listado {
  Listado({
    required this.id,
    required this.nmeroOrden,
    required this.nombreDeActividad,
    required this.nombreDelProyecto,
    required this.nombreDeColaborador,
    required this.estado,
    required this.fechaCreacion,
    required this.descripcin,
    required this.direccinOLugar,
    required this.nombreCliente,
    required this.nmeroCliente,
    required this.direccinCliente,
    required this.correoCliente,
    required this.fechaActualizacion,
  });

  int id;
  dynamic nmeroOrden;
  String nombreDeActividad;
  String nombreDelProyecto;
  String nombreDeColaborador;
  String estado;
  DateTime fechaCreacion;
  dynamic descripcin;
  dynamic direccinOLugar;
  String nombreCliente;
  dynamic nmeroCliente;
  dynamic direccinCliente;
  dynamic correoCliente;
  DateTime fechaActualizacion;

  factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        id: json["ID"],
        nmeroOrden: json["Número Orden"],
        nombreDeActividad: json["Nombre de Actividad"], //
        nombreDelProyecto: json["Nombre del Proyecto"],
        nombreDeColaborador: json["Nombre de Colaborador"],
        estado: json["Estado"],
        fechaCreacion: DateTime.parse(json["fecha creacion"]),
        descripcin: json["Descripción"],
        direccinOLugar: json["Dirección o Lugar"],
        nombreCliente: json["Nombre Cliente"],
        nmeroCliente: json["Número Cliente"],
        direccinCliente: json["Dirección Cliente"],
        correoCliente: json["Correo Cliente"],
        fechaActualizacion: DateTime.parse(json["fecha actualizacion"]),
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "Número Orden": nmeroOrden,
        "Nombre de Actividad": nombreDeActividad,
        "Nombre del Proyecto": nombreDelProyecto,
        "Nombre de Colaborador": nombreDeColaborador,
        "Estado": estado,
        "fecha creacion":
            "${fechaCreacion.day}-${fechaCreacion.month}-${fechaCreacion.year}",
        "Descripción": descripcin,
        "Dirección o Lugar": direccinOLugar,
        "Nombre Cliente": nombreCliente,
        "Número Cliente": nmeroCliente,
        "Dirección Cliente": direccinCliente,
        "Correo Cliente": correoCliente,
        "fecha actualizacion":
            "${fechaActualizacion.year.toString().padLeft(4, '0')}-${fechaActualizacion.month.toString().padLeft(2, '0')}-${fechaActualizacion.day.toString().padLeft(2, '0')}",
      };
}
