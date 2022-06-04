import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_input.dart';

import '../widgets/navbar.dart';

class DatosPage extends StatefulWidget {
  const DatosPage({Key? key}) : super(key: key);

  @override
  State<DatosPage> createState() => _DatosPageState();
}

class _DatosPageState extends State<DatosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       drawer: NavBar(),
       appBar: AppBar(

        title: Text('Datos Personales'),
      ),
        body: SafeArea(
            child: Center(
            child: SingleChildScrollView(
              child: Column(
              children: [
               
              SizedBox(height: 42),
              SizedBox(height: 20),
              CustomInput(hintText: 'Nombre'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Apellido'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Rut'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Celular'),
               SizedBox(height: 10),
              CustomInput(hintText: 'Dirección'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Correo electrónico'),
              SizedBox(height: 32),
              CustomButton(Texto: 'Guardar'),
              SizedBox(height: 40),
              Text(
              'Cambiar contraseña',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )
              ),
              SizedBox(height: 10),
              CustomInput(hintText: 'Contraseña actual'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Nueva contraseña'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Vuelva a escribir la nueva contraseña'),
              SizedBox(height: 32),
              CustomButton(Texto: 'Cambiar contraseña'),
              SizedBox(height: 32),
              ]),
            ),
    )
    )
    );
  }
}
