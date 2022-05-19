import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Text(
              'Registro',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              )
              ),
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
              SizedBox(height: 10),
              CustomInput(hintText: 'Contraseña'),
              SizedBox(height: 10),
              CustomInput(hintText: 'Confirmar Contraseña'),
              SizedBox(height: 32),
              CustomButton(Texto: 'Registrarse')
              ]),
            ),
    )
    )
    );
  }
}


