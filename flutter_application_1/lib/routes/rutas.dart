import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page_detailclie.dart';
import '../pages/page_detailcoti.dart';
import '../pages/page_detailclie.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'detalle'      : (BuildContext context) => PageCotiView(),
    'detalleclie'      : (BuildContext context) => PageClieView(),
    };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => Text('error compadre'),);
    }

  }