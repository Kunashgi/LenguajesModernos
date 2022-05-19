import 'package:flutter/material.dart';

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
            title: Text("Listado Clietnes"),
            onTap: ()=>null,
          ),ListTile(
            leading: Icon(Icons.add_shopping_cart_sharp),
            title: Text("Listado Ventas"),
            onTap: ()=>null,
          ),ListTile(
            leading: Icon(Icons.align_horizontal_right),
            title: Text("Listado Cotizaciones"),
            onTap: ()=>null,
          ),ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Cerrar Sesión"),
            onTap: ()=>null,
          ),
        ],
      ),
      
    );
  }
}