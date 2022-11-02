import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tailoringui/models/pantmodel.dart';

class Pant extends StatefulWidget {

  @override
  State<Pant> createState() => _PantState();
}

class _PantState extends State<Pant> {
  @override

  TextEditingController pantdesc = TextEditingController();

  String type1 ="";
  // String type2 ="";
  String model1 ="";
  // String model2 ="";
  late int bottom;
  late int bottomzip;
  late int tp;
  late int flit;
  // late int kp;
  // late int stitches;
  late int bp;
  late int loop;
  // late int slack;
  late int bc ;
  String kplist = "";
  // late int sideopen;
  late int stitches2;
  // late int arrow;
  // late int opc;
  // late int ipc;
  // String patti = "";
  // late int collor;
  // String button = "";
  // String desc = "";

  Widget build(BuildContext context) {

    final screen_width = MediaQuery.of(context).size.width;
    final screen_height = MediaQuery.of(context).size.height;

    return Padding(
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
                              decoration : BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  )
                              ),
                              child:Column(
                                  children: [
                                    TextField(
                                      minLines: 2,
                                      maxLines: 2,
                                      textAlignVertical:
                                      TextAlignVertical.bottom,
                                      textAlign: TextAlign.justify,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            height: 25,
                                            width: 48,
                                            child: ElevatedButton(onPressed: (){},
                                                style:ElevatedButton.styleFrom(
                                                    primary: Colors.grey,
                                                    elevation: 0
                                                ),
                                                child: Text('1/4',
                                                    style:TextStyle(
                                                        fontSize: 10
                                                    )
                                                )
                                            )),
                                        SizedBox(
                                            width: 10
                                        ),
                                        SizedBox(
                                            height: 25,
                                            width: 48,
                                            child: ElevatedButton(onPressed: (){},
                                                style:ElevatedButton.styleFrom(
                                                    primary: Colors.grey,
                                                    elevation: 0
                                                ),
                                                child: Text('1/2',
                                                    style:TextStyle(
                                                        fontSize: 10
                                                    )
                                                )
                                            )),
                                        SizedBox(
                                            width: 10
                                        ),
                                        SizedBox(
                                            height: 25,
                                            width: 48,
                                            child: ElevatedButton(onPressed: (){},
                                                style:ElevatedButton.styleFrom(
                                                    primary: Colors.grey,
                                                    elevation: 0
                                                ),
                                                child: Text('3/4',
                                                    style:TextStyle(
                                                        fontSize: 10
                                                    )
                                                )
                                            )),
                                      ],
                                    )
                                  ]
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
                                child:
                                DropdownButtonFormField(
                                    items: <String>["xx","yy","zz"].map(
                                            (e) => DropdownMenuItem(child: Text(e,
                                            style:TextStyle(
                                              color:Color.fromRGBO(47, 71, 131, 1),
                                              fontSize:11,
                                              fontWeight:FontWeight.bold,
                                            )
                                        ),
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
                                        border:OutlineInputBorder()
                                    )
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
                                    controller: pantdesc,

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
                                    onPressed: () {
                                      print(pantdesc);
                                      print(type1);
                                      print(model1);
                                      print(loop);
                                      print(bottom);
                                      print(bottomzip);
                                      print(tp);
                                      print(flit);
                                      print(bp);
                                      print(bc) ;
                                      print(kplist);
                                      print(stitches2);
                                      // final json = {'pantdesc':pantdesc,'type1':type1};

                                      pantstore(pantdesc,type1,model1,loop,stitches2,bottom,bottomzip,tp,flit,bp,bc,kplist);

                                    },
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
    );
  }

  pantstore(pantdesc,type1,model1,loop,stitches2,bottom,bottomzip,tp,flit,bp,bc,kplist){

    final json = {
      'pantdesc':pantdesc,
      'type1':type1,
      'model1':model1,
      'loop':loop,
      'stitches2':stitches2,
      'bottom':bottom,
      'bottomzip':bottomzip,
      'tp':tp,
      'flit':flit,
      'bp':bp,
      'bc':bc,
      'kplist':kplist
    };

    print('json now');
    print(json);
  }
}
