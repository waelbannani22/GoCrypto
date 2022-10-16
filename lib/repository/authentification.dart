import 'dart:core';

import 'package:cryptocurrency_app/models/exchanges.dart';
import 'package:cryptocurrency_app/models/news.dart';
import 'package:cryptocurrency_app/models/quote.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:localstorage/localstorage.dart';

import '../models/user/user.dart';

class Authentification {
  final LocalStorage storage = new LocalStorage('locals');

  Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://gocrypto.herokuapp.com/signin'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);

      storage.setItem("id", body['_id']);
      storage.setItem("username", body['username']);
      storage.setItem("email", body['email']);
      storage.setItem("password", body['password']);
      storage.setItem("phone", body['phone']);

      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return "connected";
    } else if (response.statusCode == 405) {
      print("not connected" + response.statusCode.toString());
      return "password incorrect";
    } else if (response.statusCode == 404) {
      print("not connected" + response.statusCode.toString());
      return "no profile found";
    } else {
      print("not connected" + response.statusCode.toString());
      return "error";
    }
  }

  Future<String> signup(
      String email, String password, String username, String phone) async {
    final response = await http.post(
      Uri.parse('https://gocrypto.herokuapp.com/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'phone': phone,
        'password': password,
        'username': username
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return "connected";
    } else if (response.statusCode == 403) {
      return "password incorrect";
    } else if (response.statusCode == 405) {
      return "no profile found";
    } else {
      return "error";
    }
  }

  //news api provider
  Future<List<News>> newsresponse() async {
    final response = await http.get(
        Uri.parse('https://gocrypto.herokuapp.com/newsProvider'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    List<News> myModels = [];

    if (response.statusCode == 200) {
      print("____________" + json.decode(response.body).toString());
      myModels = (json.decode(response.body) as List)
          .map((i) => News.fromJson(i))
          .toList();
      print("====================" + myModels.toString());
      return myModels;
    } else {
      return myModels;
    }
  }
  //classment

  Future<List<Quote>> classments() async {
    final response = await http.get(
        Uri.parse('https://gocrypto.herokuapp.com/classment'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    List<Quote> myModels = [];

    if (response.statusCode == 200) {
      print("____________" + json.decode(response.body).toString());
      myModels = (json.decode(response.body) as List)
          .map((i) => Quote.fromJson(i))
          .toList();
      print("====================" + myModels.toString());
      return myModels;
    } else {
      return myModels;
    }
  }

  Future<List<Quote>> classmentsdata() async {
    final response = await http.get(
        Uri.parse('https://gocrypto.herokuapp.com/classmentdata'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    List<Quote> myModels = [];

    if (response.statusCode == 200) {
      print("____________" + json.decode(response.body).toString());
      myModels = (json.decode(response.body) as List)
          .map((i) => Quote.fromJson(i))
          .toList();
      print("====================" + myModels.toString());
      return myModels;
    } else {
      return myModels;
    }
  }

  Future<List<Exchanges>> exchangesData() async {
    final response = await http.get(
        Uri.parse('https://gocrypto.herokuapp.com/exchanges'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    List<Exchanges> myModels = [];

    if (response.statusCode == 200) {
      print("____________" + json.decode(response.body).toString());
      myModels = (json.decode(response.body) as List)
          .map((i) => Exchanges.fromJson(i))
          .toList();
      print("====================" + myModels.toString());
      return myModels;
    } else {
      return myModels;
    }
  }
}
