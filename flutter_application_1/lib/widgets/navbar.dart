import 'package:flutter/material.dart';

import '../pages/list.dart';
import '../pages/login_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            
          accountName: Text("Administrador"), 
          accountEmail: Text("PruebaCorreo@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/925px-Unknown_person.jpg'
                ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://cdn.create.vista.com/api/media/medium/461266962/stock-photo-colorful-geometric-background-pink-pastel?token=',
              ),
              fit: BoxFit.cover,
            )
          ),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Listado Clientes"),
            onTap: ()=>null,
          ),ListTile(
            leading: Icon(Icons.add_shopping_cart_sharp),
            title: Text("Listado Ventas"),
            onTap: ()=>null
          ),ListTile(
            leading: Icon(Icons.align_horizontal_right),
            title: Text("Listado Cotizaciones"),
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context){
              return ListViewBuilder();
            },),),
          ),ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Cerrar Sesión"),
            onTap: (){
              showDialog(
                context: context,
                builder: (context)=>AlertDialog(
                  title: Text('Cerrar Sesión',
                  textAlign: TextAlign.center,
                  ),
                  content: Text('¿Estás seguro que deseas cerrar sesión?'),
                  actions: [
                    FlatButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                         return LoginPage();

                       },),);
                    }, child: Text('Salir')
                    ),
                    FlatButton(onPressed: ()=>Navigator.pop(context,false), child: Text('Cancelar'))
                  
                  ],
                  

                ),
              );
            },
          ),
        ],
      ),
      
    );
  }
}