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
            
          accountName: Text("Gustavo"), 
          accountEmail: Text("LaRanaGustavo@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://static.wikia.nocookie.net/disney/images/f/fb/Kermit_la_rana.png/revision/latest?cb=20160213201722&path-prefix=es'
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