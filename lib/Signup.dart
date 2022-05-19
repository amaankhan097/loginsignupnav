// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  //const Signup({ required Key key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              children: [
                const Text("Welcome",style: TextStyle(fontSize: 30, color: Colors.black)),
                const Text("Sign Up",style: TextStyle(fontSize: 30, color: Colors.red)),
                // Center(
                //   child: Image.asset('assets/images/sign-up.png',
                //     width: 200,
                //     height: 200,),
                // ),
                const SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),

                ),
                const SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email ID",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  height: size.height / 14,
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text("Register ",
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}