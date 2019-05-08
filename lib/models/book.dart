import 'package:flutter_book_app/models/access_info.dart';
import 'package:flutter_book_app/models/sale_info.dart';
import 'package:flutter_book_app/models/search_info.dart';
import 'package:flutter_book_app/models/volume_info.dart';

class Book {
  String _kind;
  String _id;
  String _etag;
  String _selfLink;
  VolumeInfo _volumeInfo;
  SaleInfo _saleInfo;
  AccessInfo _accessInfo;
  SearchInfo _searchInfo;

  Book(
      {String kind,
        String id,
        String etag,
        String selfLink,
        VolumeInfo volumeInfo,
        SaleInfo saleInfo,
        AccessInfo accessInfo,
        SearchInfo searchInfo}) {
    this._kind = kind;
    this._id = id;
    this._etag = etag;
    this._selfLink = selfLink;
    this._volumeInfo = volumeInfo;
    this._saleInfo = saleInfo;
    this._accessInfo = accessInfo;
    this._searchInfo = searchInfo;
  }

  String get kind => _kind;
  set kind(String kind) => _kind = kind;
  String get id => _id;
  set id(String id) => _id = id;
  String get etag => _etag;
  set etag(String etag) => _etag = etag;
  String get selfLink => _selfLink;
  set selfLink(String selfLink) => _selfLink = selfLink;
  VolumeInfo get volumeInfo => _volumeInfo;
  set volumeInfo(VolumeInfo volumeInfo) => _volumeInfo = volumeInfo;
  SaleInfo get saleInfo => _saleInfo;
  set saleInfo(SaleInfo saleInfo) => _saleInfo = saleInfo;
  AccessInfo get accessInfo => _accessInfo;
  set accessInfo(AccessInfo accessInfo) => _accessInfo = accessInfo;
  SearchInfo get searchInfo => _searchInfo;
  set searchInfo(SearchInfo searchInfo) => _searchInfo = searchInfo;

  Book.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo = json['saleInfo'] != null
        ? SaleInfo.fromJson(json['saleInfo'])
        : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    _searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kind'] = this._kind;
    data['id'] = this._id;
    data['etag'] = this._etag;
    data['selfLink'] = this._selfLink;
    if (this._volumeInfo != null) {
      data['volumeInfo'] = this._volumeInfo.toJson();
    }
    if (this._saleInfo != null) {
      data['saleInfo'] = this._saleInfo.toJson();
    }
    if (this._accessInfo != null) {
      data['accessInfo'] = this._accessInfo.toJson();
    }
    if (this._searchInfo != null) {
      data['searchInfo'] = this._searchInfo.toJson();
    }
    return data;
  }
}