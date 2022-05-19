import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_input.dart';

class DatosPage extends StatefulWidget {
  const DatosPage({Key? key}) : super(key: key);

  @override
  State<DatosPage> createState() => _DatosPageState();
}

class _DatosPageState extends State<DatosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
            child: SingleChildScrollView(
              child: Column(
              children: [
               TextButton(
               style: TextButton.styleFrom(
                padding: const EdgeInsets.only(right:330.0 ),
                textStyle: const TextStyle(
                  fontSize: 15,
                   ),
              ),
              onPressed: (){},
              child: const Text('< Volver'),
                      ),
              SizedBox(height: 42),
              SizedBox(height: 20),
              CustomInput(hintText: 'Nombres'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Apellidos'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Rut'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Celular'),
               SizedBox(height: 10),
              CustomInput(hintText: 'Correo electronico'),
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
