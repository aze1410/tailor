import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget{
  @override

  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar>{
  @override
  static const search = IconData(0xe567, fontFamily: 'MaterialIcons');
  Widget build(BuildContext context){
    final screen_width = MediaQuery.of(context).size.width;
    final screen_height = MediaQuery.of(context).size.height;
    return Container(
        height: screen_height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(47, 71, 131, 1),
        ),
        child: Row(
          children: [
            Container(
              width: screen_width * 0.2,
              child:Image(image: AssetImage('assets/logo.jpg'),),
            ),
            SizedBox(
              width: screen_width/10,
            ),
            Container(
              width: screen_width * 0.45,
              height: 26,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search",
                    prefixIcon: Icon(search,
                    size: 17,)
                ),
              ),
            ),
            SizedBox(
              width: screen_width/8,
            ),
            Container(
              width: screen_width * 0.05,
              child: Icon(
                Icons.account_circle_outlined,
                color: Colors.white ,
                size: 45,
              ),
            )
          ],
        ),
    );
  }
}