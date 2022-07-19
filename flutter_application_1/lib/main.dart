import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/providers/cotizacion_provider.dart';
import 'package:flutter_application_1/providers/provider_cliente_list.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'pages/register_page.dart';
import 'pages/datos_personales.dart';
import 'pages/listado_cotizaciones.dart';
import 'routes/rutas.dart';

void main() => runApp(ProviderState());

class ProviderState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CotizacionProvider(), lazy: false,),
        ChangeNotifierProvider(create: (_) =>IntegrarEnd(), lazy: false,),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch:
            Colors.grey, //i am set brown colour,you can set your colour here
      ),
      routes: AppRoutes.routes,
    );
  }
}
