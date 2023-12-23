import 'dart:convert';

import 'package:test_project/Services/globals.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future<http.Response> register(
      String name, String email, String password, String c_password) async {
    Map data = {
      "name": name,
      "email": email,
      "password": password,
      "c_password": c_password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
  static Future<http.Response> product(String name, String detail) async {
    Map data = {
      "name": name,
      "detail": detail,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'products');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> getproduct(String name, String detail) async {
    Map data = {
      "name": name,
      "detail": detail,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'products');
    http.Response response = await http.get(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> updateproduct(int id,String name, String detail) async {
    Map data = {
      "id": id,
      "name": name,
      "detail": detail,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'products');
    http.Response response = await http.put(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> deleteproduct(int id) async {
    Map data = {
      "id": id,

    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'products');
    http.Response response = await http.put(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

}
