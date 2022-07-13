// To parse this JSON data, do
//
//     final cotizacionlist = cotizacionlistFromMap(jsonString);

import 'dart:convert';

class Cotizacionlist {
    Cotizacionlist({
        required this.listado,
    });

    List<Listado> listado;

    factory Cotizacionlist.fromJson(String str) => Cotizacionlist.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Cotizacionlist.fromMap(Map<String, dynamic> json) => Cotizacionlist(
        listado: List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
    };
}

class Listado {
    Listado({
        required this.fechaCreacion,
        required this.idCotizacion,
        required this.nombreCotizacion,
        required this.descripcion,
        required this.precioTotal,
        required this.estado,
    });

    DateTime fechaCreacion;
    int idCotizacion;
    String nombreCotizacion;
    String descripcion;
    String precioTotal;
    String estado;

    factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        fechaCreacion: DateTime.parse(json["Fecha creacion"]),
        idCotizacion: json["id cotizacion"],
        nombreCotizacion: json["Nombre cotizacion"],
        descripcion: json["Descripcion"],
        precioTotal: json["Precio Total"],
        estado: json["Estado"],
    );

    Map<String, dynamic> toMap() => {
        "Fecha creacion": fechaCreacion.toIso8601String(),
        "id cotizacion": idCotizacion,
        "Nombre cotizacion": nombreCotizacion,
        "Descripcion": descripcion,
        "Precio Total": precioTotal,
        "Estado": estado,
    };
}
