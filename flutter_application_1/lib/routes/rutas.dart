import 'package:flutter/material.dart';
import '../pages/page_detailcoti.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'detalle'      : (BuildContext context) => PageCotiView(),
    };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => Text('error compadre'),);
    }

  }