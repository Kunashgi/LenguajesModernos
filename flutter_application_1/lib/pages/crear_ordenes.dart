import 'package:flutter/material.dart';

class CrearOrdenes extends StatelessWidget {
  const CrearOrdenes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear nueva Orden de trabajo')),
      body: SingleChildScrollView(
        child: Form(
            //Widget de formulario
            child: Column(
          children: <Widget>[
            _nombreActividad(),
            _nombreColaborador(),
            _nombreProyecto(),
            const SizedBox(height: 30), //Separador
            const Text(
              'Ingresar fechas de actividad',
              style: TextStyle(fontSize: 20),
            ),
            _fechaInicio(),
            _fechaTermino(),
            const SizedBox(height: 25), //Separador
            const Text(
              'Ingresar Descripción',
              style: TextStyle(fontSize: 20),
            ),
            _descripcion(),

            //Botón de enviar

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[600],
              ),
              child: const Text('Enviar',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            )
          ], //estos son metodos para poner inputs
        )),
      ),
    );
  }

  Widget _nombreActividad() {
    //Widget de input para nombre la actividad
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            //TIENE NULL CHECK
            return "Este Campo es Obligatorio";
          }
        },
        decoration: const InputDecoration(
            labelText: 'Nombre de la Actividad',
            hintText: 'Ej: Creación Mockups'),
      ),
    );
  }

  Widget _nombreColaborador() {
    //Widget de input para nombre de colaboradores
    //Input para crear un colaborador
    //Widget de input para texto
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Nombre del colaborador',
            hintText: 'Ingrese nombre completo'),
      ),
    );
  }

  Widget _nombreProyecto() {
    //Widget de input para nombre de colaboradores
    //Input para crear un colaborador
    //Widget de input para texto
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Nombre del proyecto', hintText: 'Ej: Creación App'),
      ),
    );
  }

  Widget _fechaInicio() {
    //Widget de input para nombre de colaboradores
    //Input para crear un colaborador
    //Widget de input para texto
    TextEditingController dateCtl = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: const InputDecoration(
            labelText: 'Fecha de Inicio Actividad',
            hintText: 'Ingrese la fecha de inicio'),
      ),
    );
  }

  Widget _fechaTermino() {
    //Widget de input para nombre de colaboradores
    //Input para crear un colaborador
    //Widget de input para texto
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Fecha de Termino Actividad',
            hintText: 'Ingrese la fecha de termino'),
      ),
    );
  }

  Widget _descripcion() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        maxLines: 9,
        minLines: 3,
        decoration: const InputDecoration(
          hintText: 'Agregue una breve descripción',
          border: OutlineInputBorder(borderSide: BorderSide()),
        ),
      ),
    );
  }
}
