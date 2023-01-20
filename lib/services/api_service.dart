import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'app_exceptions.dart';

class ApiService {
  Future<dynamic> get(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      print('service done....');
      if (response.statusCode < 200 || response.statusCode > 299) {
        throw response.body;
      }
      return response;
    } on SocketException {
      print('Network error');
      throw FetchDataException;
    }
  }

  Future<dynamic> post(String url, Map payload, apiHeaders) async {
    try {
      String body = jsonEncode(payload);
      http.Response response =
          await http.post(Uri.parse(url), headers: apiHeaders, body: body);
      print('service done....');
      if (response.statusCode < 200 || response.statusCode > 299) {
        throw response.body;
      }
      return response;
    } on SocketException {
      print('Network error');
      throw FetchDataException;
    }
  }
}
