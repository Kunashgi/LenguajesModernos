// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register_page.dart';

import 'datos_personales.dart';
import 'olvidaste_contrasena.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(Icons.android,
              size: 90,),
             
               
               Text('Hola de nuevo!',
               style: TextStyle(
                 fontSize: 30,
        
               ),
        
               ),
               SizedBox(height: 10,),
        
               Text('Bienvenid@!',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                  fontSize: 24,
               ),
               ),
               SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:25.0),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                     border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left:20.0 ),
                     child: TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Correo Electrónico', 
                     ),
                   ),
                   ),
                 ),
               ),
               SizedBox(height: 10,),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal:25.0),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                     border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left:20.0 ),
                     child: TextField(
                       obscureText: true,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Contraseña', 
                     ),
                   ),
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:20.0),
                 child: Container(
                   padding: EdgeInsets.all(15),
                   decoration: BoxDecoration(color: Colors.black,
                   borderRadius: BorderRadius.circular(12)
                   ),
                   child: Center(
                   child:
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DatosPage();
                        },
                        ),
                        );
                      },
                      child: Text('Iniciar Sesión',
                                       style: TextStyle(color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18,
                                       ),
                                       ),
                    ),
                 ),
                 ),
               ),
               SizedBox(height: 30,),
        
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 // ignore: prefer_const_literals_to_create_immutables
                 children: [
                   Text('¿No tienes cuenta?',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   
                   ),),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return RegisterPage();

                       },),);
                     },
                     child: Text(' Registrate ahora!',
                     style: TextStyle(
                       color: Colors.blue,
                       fontWeight: FontWeight.bold,
                     
                     ),
                     ),
                   ),
                 ],
               ),
                          SizedBox(height: 30,),
        
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 // ignore: prefer_const_literals_to_create_immutables
                 children: [
                   Text('¿Olvidaste tú contraseña?',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   
                   ),),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, 
                       MaterialPageRoute(builder: (context){
                         return OlvidasteContrasena(); 
                       },
                       ),
                       );
                     },
                     child: Text(' Recupérala aquí!',
                     style: TextStyle(
                       color: Colors.blue,
                       fontWeight: FontWeight.bold,
                     
                     ),
                     ),
                   ),
                 ],
               ),
           ],
          ),
        ),
      ),
      ),
    );
  }
}
