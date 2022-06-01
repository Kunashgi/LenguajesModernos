// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class OlvidasteContrasena extends StatefulWidget {
  const OlvidasteContrasena({ Key? key }) : super(key: key);

  @override
  State<OlvidasteContrasena> createState() => _OlvidasteContrasenaState();
}

class _OlvidasteContrasenaState extends State<OlvidasteContrasena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Text("ingresa tu correo y te enviaremos un Gmail con los pasos a seguir",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
          ),
        ),
         SizedBox(height: 10,),
          Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               child: TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.white),
                   borderRadius: BorderRadius.circular(12),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                     borderRadius: BorderRadius.circular(12)
                   ),
                   hintText: "Correo",
                   fillColor: Colors.grey[300],
                   filled: true,
                 ),
   
                   ),
                 ),
                 MaterialButton(
                   onPressed: (){},
                   child: Text('Recuperar Contraseña'),
                   color: Colors.grey[300],
                 )
      ],
      ),

    );
  }
}