import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tailoringui/screens/navbar.dart';
import 'package:tailoringui/screens/sidenav.dart';

class Dashboard extends StatefulWidget {
  @override
  _StatefulWidgetState createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<Dashboard> {
  // late ScrollController _controller;
  // double pixels = 0.0;
  // @override
  // void initState(){
  //   super.initState();
  //   _controller = ScrollController();
  //   _controller.addListener(() {
  //   pixels = _controller.position.pixels;
  //   print(_controller.position.pixels);
  //   });
  // }
  @override
  static const IconData message = IconData(0xe3e0, fontFamily: 'MaterialIcons');
  static const account_circle = IconData(0xe043, fontFamily: 'MaterialIcons');
  static const shopping_cart = IconData(0xe59c, fontFamily: 'MaterialIcons');
  static const search = IconData(0xe567, fontFamily: 'MaterialIcons');
  static const home = IconData(0xe318, fontFamily: 'MaterialIcons');

  Widget build(BuildContext context) {
    final screen_width = MediaQuery.of(context).size.width;
    final screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Navbar(),
          Row(
            children: [
              Container(
                  height: screen_height * 0.94,
                  width: screen_width * 0.17,
                  color: Color.fromRGBO(47, 71, 131, 1),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(4), child: Sidenav()),

                      //After Dashboard

                      Padding(
                        padding: EdgeInsets.all(screen_width * 0.02),
                        child: Column(
                          children: [
                            //1. Total Customers

                            Container(
                              width: screen_width * 0.14,
                              height: screen_height * 0.14,
                              color: Colors.white,
                              child: Column(children: [
                                Center(
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.person,
                                      color: Color.fromRGBO(47, 71, 131, 1),
                                      size: 35,
                                    ),
                                    title: Text(
                                      "Total Customers !",
                                      style: TextStyle(
                                          color: Color.fromRGBO(47, 71, 131, 1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screen_height / 40,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      width: double.infinity,
                                      height: screen_height / 19.5,
                                      color: Colors.black54,
                                      child: Center(
                                        child: ListTile(
                                          title: Text(
                                            "View Details",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_circle_right_sharp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                )
                              ]),
                            ),

                            SizedBox(
                              height: screen_height / 41,
                            ),

                            // 2. Total Orders

                            Container(
                              width: screen_width * 0.14,
                              height: screen_height * 0.14,
                              color: Colors.white,
                              child: Column(children: [
                                Center(
                                    child: ListTile(
                                  leading: Icon(
                                    shopping_cart,
                                    color: Color.fromRGBO(47, 71, 131, 1),
                                    size: 35,
                                  ),
                                  title: Text(
                                    "Total Orders !",
                                    style: TextStyle(
                                        color: Color.fromRGBO(47, 71, 131, 1),
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                                SizedBox(
                                  height: screen_height / 40,
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: SafeArea(
                                      child: Container(
                                          width: double.infinity,
                                          height: screen_height / 19.5,
                                          color: Colors.black54,
                                          child: Center(
                                            child: ListTile(
                                              title: Text(
                                                "View Details",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_circle_right_sharp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                    ))
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))),

              //Right Side Part

              Container(
                height: screen_height * 0.94,
                width: screen_width * 0.83,
                color: Color.fromRGBO(228, 228, 228, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        "MEASUREMENT",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(47, 71, 131, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(
                      height: screen_height / 42,
                    ),
                    //2

                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: screen_width / 40,
                          ),
                          Text(
                            "Customer Name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(47, 71, 131, 1)),
                          ),
                          SizedBox(
                            width: screen_width / 40,
                          ),
                          Container(
                            height: 30,
                            width: screen_width / 6,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screen_width / 30,
                          ),
                          Text(
                            "Mobile Number",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(47, 71, 131, 1)),
                          ),
                          SizedBox(
                            width: screen_width / 40,
                          ),
                          Container(
                            height: 30,
                            width: screen_width / 6,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    // Pant

                    Padding(
                      padding: EdgeInsets.fromLTRB(screen_width / 43, 15, 0, 0),
                      child: Container(
                        width: screen_width * 0.78,
                        color: Colors.white,
                        height: screen_height * 0.37,
                        child: Column(
                          children: [
                            //nav bar on table

                            Container(
                              width: double.infinity,
                              height: screen_height * 0.04,
                              color: Color.fromRGBO(47, 71, 131, 1),
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: screen_width / 18,
                                    color: Colors.red,
                                    child: Center(
                                        child: Text(
                                      "PANT",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    )),
                                  ),
                                  SizedBox(
                                    width: screen_width / 40,
                                  ),
                                  Text(
                                    "Serial No. ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.04,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Order No. ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.04,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Order Date ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.053,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Due date ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.053,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Quantity ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.04,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 21,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.add_circle_sharp,
                                      size: screen_height / 40,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                width: screen_width * 0.78,
                                height: screen_height * 0.33,
                                child: Row(
                                  children: [
                                    Container(
                                      width: screen_width * 0.58,
                                      height: screen_height * 0.33,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Container(
                                              width: screen_width * 0.57,
                                              height: screen_height * 0.13,
                                              child: TextField(
                                                minLines: 3,
                                                maxLines: 4,
                                                textAlignVertical:
                                                    TextAlignVertical.bottom,
                                                textAlign: TextAlign.justify,
                                                decoration: InputDecoration(
                                                    border:
                                                        new OutlineInputBorder(
                                                            borderSide:
                                                                new BorderSide(
                                                                    color: Colors
                                                                        .blue)),
                                                    fillColor: Colors.white,
                                                    filled: true),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(70, 10, 0, 0),
                                          child: Container(
                                            width: screen_width * 0.12,
                                            height: screen_height * 0.18,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    47, 71, 131, 1),
                                                width: 2,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                    child: Icon(
                                                  Icons.image_outlined,
                                                  size: 35,
                                                )),
                                                Center(
                                                  child: Text(
                                                    'Upload Image',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(60, 15, 0, 0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Print'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                  SizedBox(
                                                    width: screen_width * 0.015,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Ok'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: screen_height / 50,
                                              ),
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Edit  '),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                  SizedBox(
                                                    width: screen_width * 0.015,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Cancel'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Shirt

                    Padding(
                      padding: EdgeInsets.fromLTRB(screen_width / 43, 15, 0, 0),
                      child: Container(
                        width: screen_width * 0.78,
                        color: Colors.white,
                        height: screen_height * 0.37,
                        child: Column(
                          children: [
                            //nav bar on table

                            Container(
                              width: double.infinity,
                              height: screen_height * 0.04,
                              color: Color.fromRGBO(47, 71, 131, 1),
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: screen_width / 18,
                                    color: Colors.red,
                                    child: Center(
                                        child: Text(
                                      "PANT",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    )),
                                  ),
                                  SizedBox(
                                    width: screen_width / 40,
                                  ),
                                  Text(
                                    "Serial No. ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.04,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Order No. ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.04,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Order Date ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.053,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Due date ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.053,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  SizedBox(
                                    width: screen_width / 50,
                                  ),
                                  Text(
                                    "Quantity ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.04,
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screen_width / 21,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.add_circle_sharp,
                                      size: screen_height / 40,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                width: screen_width * 0.78,
                                height: screen_height * 0.33,
                                child: Row(
                                  children: [
                                    Container(
                                      width: screen_width * 0.58,
                                      height: screen_height * 0.33,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Container(
                                              width: screen_width * 0.57,
                                              height: screen_height * 0.13,
                                              child: TextField(
                                                minLines: 3,
                                                maxLines: 4,
                                                textAlignVertical:
                                                    TextAlignVertical.bottom,
                                                textAlign: TextAlign.justify,
                                                decoration: InputDecoration(
                                                    border:
                                                        new OutlineInputBorder(
                                                            borderSide:
                                                                new BorderSide(
                                                                    color: Colors
                                                                        .blue)),
                                                    fillColor: Colors.white,
                                                    filled: true),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(70, 10, 0, 0),
                                          child: Container(
                                            width: screen_width * 0.12,
                                            height: screen_height * 0.18,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    47, 71, 131, 1),
                                                width: 2,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                    child: Icon(
                                                  Icons.image_outlined,
                                                  size: 35,
                                                )),
                                                Center(
                                                  child: Text(
                                                    'Upload Image',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(60, 15, 0, 0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Print'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                  SizedBox(
                                                    width: screen_width * 0.015,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Ok'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: screen_height / 50,
                                              ),
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Edit'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                  SizedBox(
                                                    width: screen_width * 0.015,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Cancel'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary:
                                                                Color.fromRGBO(
                                                                    47,
                                                                    71,
                                                                    131,
                                                                    1)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
