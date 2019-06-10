import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';

class PostModel with ChangeNotifier {
  dynamic _post ;
  bool _loaderShow = true;

PostModel(){
  fetchPost(1);
}

  getPost() => _post;

  setPost(dynamic post) {
    _post = post;
    notifyListeners();
  }

  getLoaderShow()=> _loaderShow;
  setLoaderShow(bool loaderShow){
    _loaderShow = loaderShow;
    notifyListeners();
  }

  Future<dynamic> fetchPost(int id) async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/photos/' + id.toString());

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      print(response.body);
      setPost(jsonDecode(response.body));
      setLoaderShow(false);
      return response;
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }

//
//  void decrementCounter() {
//    _counter--;
//    notifyListeners();
//  }
}
