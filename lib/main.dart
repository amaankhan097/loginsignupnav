// ignore_for_file: avoid_print, no_logic_in_create_state

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/Signup.dart';

import 'ApiService.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.android), text: "Tab 1",),
                  Tab(icon: Icon(Icons.phone_iphone), text: "Tab 2",),
                ],
              ),
              // title: const Text('TabBar and TabBarView'),
            ),
    body: const MyStatefulWidget(),
    drawer:Drawer(
    child:Material(
    color: Color.fromRGBO(50, 75, 205, 1),
    child:ListView(
    padding: EdgeInsets.zero,
    children:<Widget> [

    //basically used for header in drawer



UserAccountsDrawerHeader(accountName: Text("amaan"),
    accountEmail: Text("amaan@gmail.com"),
currentAccountPicture: CircleAvatar(
  child: Image(
    image: AssetImage('assets/abd.png',),
  ),
),),
    const SizedBox(height: 16,),

    buildMenuItem(
    text:'People', icon: Icons.people),
    const SizedBox(height: 16,),
    buildMenuItem(
    text:'favorites', icon: Icons.favorite,
    ),
    const SizedBox(height: 16,),
    buildMenuItem(
    text:'Updates', icon: Icons.update
    ),

     
    ],
    ),


    ),

    ),
          ),
        ),
    );
  }
    Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback?onClicked,
    }) {
    final color =Colors.white;
    final hoverColor=Colors.white;
    return ListTile(
    leading: Icon(icon,color: color),
    title: Text(text,style:TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap:onClicked,
    );
    }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }


    //   body: const TabBarView(
          //     children: [
          //       Center(child: Text("Page 1")),
          //       Center(child: Text("Page 2")),
          //     ],
          //   ),
          // ),
        // ),)
  }

  @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();


  //  body: const MyStatefulWidget(),
  //
  //  drawer: Drawer(
  //  child: Material(
  //  color: Colors.red,
  //  child: ListView(
  //  padding: EdgeInsets.zero,
  // children: <Widget>[
  //
  // ],


  @override
// State<StatefulWidget> createState() {
//   // TODO: implement createState
//   throw UnimplementedError();
// }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}): super(key: key);

  @override
  State<MyStatefulWidget> createState()=> _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  callLoginApi() {
    final service = ApiServices();
    service.apiCallLogin({
      "email": nameController.text,
      "password": passwordController.text,
    },
    ).then((value) {
      if (value.error != null){
        print("get data >>>>>>" + value.error!);
      }else {
        print( value.token!);
      }});
  }
  // get key => null;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Team Computers',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),

                ),
             ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style:TextStyle(fontSize: 20),
                ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
callLoginApi();
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does Not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: (
                      ) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Signup()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}


