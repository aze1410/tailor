import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sidenav extends StatefulWidget{
  @override
  _Sidenavstate createState() => _Sidenavstate();

}

class _Sidenavstate extends State<Sidenav>{
  @override
  static const IconData message = IconData(0xe3e0, fontFamily: 'MaterialIcons');
  static const account_circle = IconData(0xe043, fontFamily: 'MaterialIcons');
  static const shopping_cart = IconData(0xe59c, fontFamily: 'MaterialIcons');
  static const search = IconData(0xe567, fontFamily: 'MaterialIcons');
  static const home = IconData(0xe318, fontFamily: 'MaterialIcons');

  Widget build(BuildContext context) {

    final screen_width = MediaQuery.of(context).size.width;
    final screen_height = MediaQuery.of(context).size.height;

    return
      Container(
        color: Colors.white,
        height: screen_height * 0.5,
        child: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(home,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("Dashboard"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(shopping_cart,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("Add Order"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(shopping_cart,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("View/Edit Order"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(account_circle,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("Add Customer"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(account_circle,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("View/Edit Customer"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(message,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("Sent Message"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.email,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("Sent Eamil"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings,
                    color: Color.fromRGBO(47, 71, 131, 1)),
                title: Text("General Settings"),
                onTap: (){},
              ),
            ],
          ),
        ),
      );
  }
}