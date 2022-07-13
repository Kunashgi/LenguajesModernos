import 'dart:convert';

class ClientesList
 {
    ClientesList
    ({
        required this.listado,
    });

    List<Listado> listado;

    factory ClientesList
    .fromJson(String str) => ClientesList
    .fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ClientesList
    .fromMap(Map<String, dynamic> json) => ClientesList
    (
        listado: List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
    };
}

class Listado {
    Listado({
        required this.fechaCreacion,
        required this.idCliente,
        required this.rutCliente,
        required this.nombreCliente,
        required this.apellidoCliente,
        required this.gmail,
        required this.contrasea,
        required this.fono,
        required this.direccion,
        required this.estadoCliente,
    });

    DateTime fechaCreacion;
    int idCliente;
    String rutCliente;
    String nombreCliente;
    String apellidoCliente;
    String gmail;
    String contrasea;
    int fono;
    String direccion;
    String estadoCliente;

    factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        fechaCreacion: DateTime.parse(json["Fecha Creacion"]),
        idCliente: json["id cliente"],
        rutCliente: json["Rut Cliente"],
        nombreCliente: json["Nombre Cliente"],
        apellidoCliente: json["Apellido Cliente"],
        gmail: json["Gmail"],
        contrasea: json["Contraseña"] ==null? "Dbfnfo":json["contraseña"],
        fono: json["Fono"],
        direccion: json["Direccion"],
        estadoCliente: json["Estado Cliente"],
    );

    Map<String, dynamic> toMap() => {
        "Fecha Creacion": fechaCreacion.toIso8601String(),
        "id cliente": idCliente,
        "Rut Cliente": rutCliente,
        "Nombre Cliente": nombreCliente,
        "Apellido Cliente": apellidoCliente,
        "Gmail": gmail,
        "Contraseña": contrasea,
        "Fono": fono,
        "Direccion": direccion,
        "Estado Cliente": estadoCliente,
    };
}