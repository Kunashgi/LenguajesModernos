import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                padding: const EdgeInsets.only(right:300.0 ),
                textStyle: const TextStyle(
                  fontSize: 15,
                   ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                         return LoginPage();

                       },),);
              },
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


