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

  /*String toJson() => json.encode(toMap());*/

  factory ListadoOrden.fromMap(Map<String, dynamic> json) => ListadoOrden(
        listado:
            List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
      );

  /*Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
      };*/
}

class Listado {
  Listado({
    required this.id,
    required this.nmeroOrden,
    required this.nombreDeActividad,
    required this.nombreDelProyecto,
    required this.nombreDeColaborador,
    /*required this.estado,*/
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
  int nmeroOrden;
  String nombreDeActividad;
  String nombreDelProyecto;
  String nombreDeColaborador;
  /*Estado estado;*/
  DateTime fechaCreacion;
  String descripcin;
  String direccinOLugar;
  String nombreCliente;
  String nmeroCliente;
  String direccinCliente;
  String correoCliente;
  DateTime fechaActualizacion;

  factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

  /*String toJson() => json.encode(toMap());*/

  factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        id: json["ID"],
        nmeroOrden: json["Número Orden"],
        nombreDeActividad: json["Nombre de Actividad"] == null
            ? null
            : json["Nombre de Actividad"],
        nombreDelProyecto: json["Nombre del Proyecto"] == null
            ? null
            : json["Nombre del Proyecto"],
        nombreDeColaborador: json["Nombre de Colaborador"] == null
            ? null
            : json["Nombre de Colaborador"],
        /*estado: estadoValues.map[json["Estado"]],*/
        fechaCreacion: DateTime.parse(json["fecha creacion"]),
        descripcin: json["Descripción"] == null ? null : json["Descripción"],
        direccinOLugar: json["Dirección o Lugar"] == null
            ? null
            : json["Dirección o Lugar"],
        nombreCliente:
            json["Nombre Cliente"] == null ? null : json["Nombre Cliente"],
        nmeroCliente:
            json["Número Cliente"] == null ? null : json["Número Cliente"],
        direccinCliente: json["Dirección Cliente"] == null
            ? null
            : json["Dirección Cliente"],
        correoCliente:
            json["Correo Cliente"] == null ? null : json["Correo Cliente"],
        fechaActualizacion: DateTime.parse(json["fecha actualizacion"]),
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "Número Orden": nmeroOrden,
        "Nombre de Actividad":
            nombreDeActividad == null ? null : nombreDeActividad,
        "Nombre del Proyecto":
            nombreDelProyecto == null ? null : nombreDelProyecto,
        "Nombre de Colaborador":
            nombreDeColaborador == null ? null : nombreDeColaborador,
        /*"Estado": estadoValues.reverse[estado],*/
        "fecha creacion":
            "${fechaCreacion.year.toString().padLeft(4, '0')}-${fechaCreacion.month.toString().padLeft(2, '0')}-${fechaCreacion.day.toString().padLeft(2, '0')}",
        "Descripción": descripcin == null ? null : descripcin,
        "Dirección o Lugar": direccinOLugar == null ? null : direccinOLugar,
        "Nombre Cliente": nombreCliente == null ? null : nombreCliente,
        "Número Cliente": nmeroCliente == null ? null : nmeroCliente,
        "Dirección Cliente": direccinCliente == null ? null : direccinCliente,
        "Correo Cliente": correoCliente == null ? null : correoCliente,
        "fecha actualizacion":
            "${fechaActualizacion.year.toString().padLeft(4, '0')}-${fechaActualizacion.month.toString().padLeft(2, '0')}-${fechaActualizacion.day.toString().padLeft(2, '0')}",
      };
}

/*enum Estado { ACTIVO, FINALIZADO }

final estadoValues =
    EnumValues({"Activo": Estado.ACTIVO, "Finalizado": Estado.FINALIZADO});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}*/
