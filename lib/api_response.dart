import 'package:flutter_book_app/models/book.dart';

class ApiResponse {
  String _kind;
  int _totalItems;
  List<Book> _items;

  ApiResponse({String kind, int totalItems, List<Book> items}) {
    this._kind = kind;
    this._totalItems = totalItems;
    this._items = items;
  }

  String get kind => _kind;
  set kind(String kind) => _kind = kind;
  int get totalItems => _totalItems;
  set totalItems(int totalItems) => _totalItems = totalItems;
  List<Book> get items => _items;
  set items(List<Book> items) => _items = items;

  ApiResponse.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _totalItems = json['totalItems'];
    if (json['items'] != null) {
      _items = List<Book>();
      json['items'].forEach((v) {
        _items.add(Book.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kind'] = this._kind;
    data['totalItems'] = this._totalItems;
    if (this._items != null) {
      data['items'] = this._items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}