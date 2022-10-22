import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tailoringui/screens/navbar.dart';
import 'package:tailoringui/screens/sidenav.dart';

class Dashboard extends StatefulWidget {
  @override
  _StatefulWidgetState createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<Dashboard> {

  @override
  static const IconData message = IconData(0xe3e0, fontFamily: 'MaterialIcons');
  static const account_circle = IconData(0xe043, fontFamily: 'MaterialIcons');
  static const shopping_cart = IconData(0xe59c, fontFamily: 'MaterialIcons');
  static const search = IconData(0xe567, fontFamily: 'MaterialIcons');
  static const home = IconData(0xe318, fontFamily: 'MaterialIcons');

  String type1 ="";
  String type2 ="";
  String model1 ="";
  String model2 ="";
  late int bottom;
  late int bottomzip;
  late int tp;
  late int flit;
  late int kp;
  late int stitches;
  late int bp;
  late int loop;
  late int slack;
  late int bc ;
  String kplist = "";
  late int sideopen;
  late int stitches2;
  late int arrow;
  late int opc;
  late int ipc;
  String patti = "";
  late int collor;
  String button = "";
  String desc = "";

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
                        // padding: EdgeInsets.all(screen_width * 0.02),
                        padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [

                            SizedBox(
                              height: 17
                            ),
                            //1. Total Customers

                            Container(
                              // width: screen_width * 0.14,
                              width: 190,
                              // height: screen_height,
                              height: 110,
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
                                      "Total Customers!",
                                      style: TextStyle(
                                          color: Color.fromRGBO(47, 71, 131, 1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      width: double.infinity,
                                      height: 45,
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
                              // width: screen_width * 0.14,
                              // height: screen_height * 0.14,
                              width: 190,
                              height: 110,
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
                                        // fontSize: screen_height/53.5,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                                SizedBox(
                                  height: 17,
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: SafeArea(
                                      child: Container(
                                          width: double.infinity,
                                          height: 45,
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
                                      size: 16,
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
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Text('Type',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 27
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e,
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                            value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      type1 = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                      hintText: "Full Pant",
                                                      enabledBorder: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 10
                                                      ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 35
                                              ),

                                              Text('Fit/பிளிட் ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 60
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      flit = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 30
                                              ),

                                              Text('Bottom Zip',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 20
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      bottomzip = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),


                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Text('Model',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 15
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e,
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      model1 = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "Pencil/பென்சில்",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/40
                                              ),

                                              Text('Bottom/பாட்டம்',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 16
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      bottom = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 30
                                              ),

                                              Text('T.P               ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 20
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      tp = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),

                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Container(
                                                width: 45,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e,
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      kplist = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "K. P",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 15
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      bc = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/40
                                              ),

                                              Text('Stitches/தையல்',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 16
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      stitches2 = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 30
                                              ),

                                              Text('Description  ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 20
                                              ),
                                              Container(
                                                  width: 200,
                                                  height: 20,
                                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                  ),
                                                  child : TextField(

                                                  )
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                              height: 8
                                          ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: 30
                                          ),
                                          Text('B.P     ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromRGBO(47, 71, 131, 1),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                              width: 15
                                          ),
                                          Container(
                                            width: 110,
                                            height: 20,
                                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                            ),
                                            child: DropdownButtonFormField<int>(
                                              items: <int>[1,2,3].map(
                                                      (e) => DropdownMenuItem(child: Text(e.toString(),
                                                      style:TextStyle(
                                                        color:Color.fromRGBO(47, 71, 131, 1),
                                                        fontSize:11,
                                                        fontWeight:FontWeight.bold,
                                                      )),
                                                    value: e,)
                                              ).toList(),
                                              onChanged: (int? val) {
                                                setState(() {
                                                  bp = val!;
                                                });
                                              },
                                              decoration: InputDecoration(
                                                hintText: "1",
                                                enabledBorder: InputBorder.none,
                                                hintStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: screen_width/40
                                          ),

                                          Text('Loop/லூப்   ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromRGBO(47, 71, 131, 1),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                              width: 30
                                          ),
                                          Container(
                                            width: 60,
                                            height: 20,
                                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                            ),
                                            child: DropdownButtonFormField<int>(
                                              items: <int>[1,2,3].map(
                                                      (e) => DropdownMenuItem(child: Text(e.toString(),
                                                      style:TextStyle(
                                                        color:Color.fromRGBO(47, 71, 131, 1),
                                                        fontSize:11,
                                                        fontWeight:FontWeight.bold,
                                                      )),value: e,)
                                              ).toList(),
                                              onChanged: (int? val) {
                                                setState(() {
                                                  loop = val!;
                                                });
                                              },
                                              decoration: InputDecoration(
                                                hintText: "1",
                                                enabledBorder: InputBorder.none,
                                                hintStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
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
                                        ),
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
                      child: SingleChildScrollView(
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
                                      size: 16,
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
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Text('Type',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 27
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e,
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      type2 = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "Full hand shirt",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 35
                                              ),

                                              Text('F.Patti/F.பட்டி  ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      patti = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 30
                                              ),

                                              Text('I P C           ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 28
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      ipc = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),


                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Text('Model',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 15
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e,
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      model2 = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "Suit/சூட் ",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 16
                                              ),

                                              Text('Side Open/சைடு ஓபன்',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 6
                                              ),
                                              Container(
                                                width: 50,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      sideopen = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 20
                                              ),

                                              Text('Collar/காலர்',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 10
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      collor = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),

                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Text('Slock',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 25
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      slack = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 35
                                              ),

                                              Text('Stitches/தையல்',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 18
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      stitches = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 20
                                              ),

                                              Text('Button/பட்டன்',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 5
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<String>(
                                                  items: <String>["xx","yy","zz"].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (String? val) {
                                                    setState(() {
                                                      button = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),


                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 30
                                              ),
                                              Text('B.C     ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 15
                                              ),
                                              Container(
                                                width: 110,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),
                                                        value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      bc = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screen_width/40
                                              ),

                                              Text('Arrow/ஆரோ  ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 16
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child: DropdownButtonFormField<int>(
                                                  items: <int>[1,2,3].map(
                                                          (e) => DropdownMenuItem(child: Text(e.toString(),
                                                          style:TextStyle(
                                                            color:Color.fromRGBO(47, 71, 131, 1),
                                                            fontSize:11,
                                                            fontWeight:FontWeight.bold,
                                                          )),value: e,)
                                                  ).toList(),
                                                  onChanged: (int? val) {
                                                    setState(() {
                                                      arrow = val!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "1",
                                                    enabledBorder: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 30
                                              ),

                                              Text('Description  ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(47, 71, 131, 1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 32
                                              ),
                                              Container(
                                                width: 200,
                                                height: 20,
                                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Color.fromRGBO(47, 71, 131, 1),width: 1)
                                                ),
                                                child : TextField(

                                                )
                                              ),
                                              SizedBox(
                                                  width: screen_width/50
                                              ),
                                            ],
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
                      )),
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

