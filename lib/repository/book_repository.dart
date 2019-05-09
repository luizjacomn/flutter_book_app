import 'package:flutter_book_app/bloc/state/home_page_state.dart';
import 'package:http/http.dart' as http;

class BookRepository {
  Future<HomePageState> getBooks(String query) {
    return Future.delayed(Duration(seconds: 2),
        () => HomePageStateError(message: 'Falha de conexão!'));
  }
}
