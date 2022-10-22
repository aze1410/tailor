import 'package:flutter/material.dart';
import 'package:tailoringui/reusable_widgets/text_field.dart';
import 'package:tailoringui/screens/dashboard.dart';

class login extends StatefulWidget {
  @override
  _Loginstate createState() => _Loginstate();
}

class _Loginstate extends State<login> {
  @override
  bool _isVisible = true;
  TextEditingController _emailtextcontroller = TextEditingController();
  TextEditingController _passtextcontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 71, 131, 1),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/logo.jpg'),
                  width: 360,
                  height: 100,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 270,
                  height: 40,
                  // color: Colors.white,
                  child: logintextfield("Email", false, _emailtextcontroller),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                    width: 270,
                    height: 40,
                    // color: Colors.white,
                    child: TextFormField(
                      obscureText: _isVisible,
                      cursorColor: Colors.black,
                      textAlignVertical: TextAlignVertical.bottom,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          icon: _isVisible
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                  size: 15,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 270,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
