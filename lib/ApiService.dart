import 'package:http/http.dart'as http;
import 'dart:convert';
//import 'package:flutter/material.dart';;
class ApiServices{
  Future<LoginApiResponse>apiCallLogin(Map<String,dynamic> param)async{
    var url = Uri.parse('https://reqres.in/api/register');
    var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});

    print('Response status: ${response.statusCode}');
    print('Response body:d ${response.body}');

    print(await http.read(Uri.parse('https://reqres.in/api/register')));
    final data=jsonDecode(response.body);
    return LoginApiResponse(token: data["token"],error:data["error"]);
  }
}

class LoginApiResponse{
  final String?token;
  final String?error;
  LoginApiResponse({this.token,this.error});
}