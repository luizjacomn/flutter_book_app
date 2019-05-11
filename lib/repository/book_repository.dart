import 'dart:convert';

import 'package:flutter_book_app/api_response.dart';
import 'package:flutter_book_app/bloc/state/home_page_state.dart';
import 'package:http/http.dart' as http;

class BookRepository {
  final String baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  Future<HomePageState> getBooks(String query) async {
    var response = await http.get('$baseUrl?q=$query');

    if (response.statusCode == 200) {
      var body = response.body;
      var data = ApiResponse.fromJson(json.decode(body));

      return HomePageStateSuccess(books: data.items);
    }

    return HomePageStateError(
      message: 'Houve uma falha de conexão!',
    );
  }
}

//var response = http.get('$baseUrl?q=$query');
//
//response.then((res) {
//var body = res.body;
//var data = ApiResponse.fromJson(json.decode(body));
//return HomePageStateSuccess(books: data.items);
//}).catchError((e) {
//return HomePageStateError(message: e);
//});
//return null;
