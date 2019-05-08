import 'package:flutter_book_app/models/image_link.dart';
import 'package:flutter_book_app/models/industry_identifier.dart';
import 'package:flutter_book_app/models/reading_mode.dart';

class VolumeInfo {
  String _title;
  List<String> _authors;
  String _publisher;
  String _description;
  List<IndustryIdentifier> _industryIdentifiers;
  ReadingMode _readingModes;
  int _pageCount;
  String _printType;
  int _averageRating;
  int _ratingsCount;
  String _maturityRating;
  bool _allowAnonLogging;
  String _contentVersion;
  ImageLink _imageLinks;
  String _language;
  String _previewLink;
  String _infoLink;
  String _canonicalVolumeLink;

  VolumeInfo(
      {String title,
        List<String> authors,
        String publisher,
        String description,
        List<IndustryIdentifier> industryIdentifiers,
        ReadingMode readingModes,
        int pageCount,
        String printType,
        int averageRating,
        int ratingsCount,
        String maturityRating,
        bool allowAnonLogging,
        String contentVersion,
        ImageLink imageLinks,
        String language,
        String previewLink,
        String infoLink,
        String canonicalVolumeLink}) {
    this._title = title;
    this._authors = authors;
    this._publisher = publisher;
    this._description = description;
    this._industryIdentifiers = industryIdentifiers;
    this._readingModes = readingModes;
    this._pageCount = pageCount;
    this._printType = printType;
    this._averageRating = averageRating;
    this._ratingsCount = ratingsCount;
    this._maturityRating = maturityRating;
    this._allowAnonLogging = allowAnonLogging;
    this._contentVersion = contentVersion;
    this._imageLinks = imageLinks;
    this._language = language;
    this._previewLink = previewLink;
    this._infoLink = infoLink;
    this._canonicalVolumeLink = canonicalVolumeLink;
  }

  String get title => _title;
  set title(String title) => _title = title;
  List<String> get authors => _authors;
  set authors(List<String> authors) => _authors = authors;
  String get publisher => _publisher;
  set publisher(String publisher) => _publisher = publisher;
  String get description => _description;
  set description(String description) => _description = description;
  List<IndustryIdentifier> get industryIdentifiers => _industryIdentifiers;
  set industryIdentifiers(List<IndustryIdentifier> industryIdentifiers) =>
      _industryIdentifiers = industryIdentifiers;
  ReadingMode get readingModes => _readingModes;
  set readingModes(ReadingMode readingModes) => _readingModes = readingModes;
  int get pageCount => _pageCount;
  set pageCount(int pageCount) => _pageCount = pageCount;
  String get printType => _printType;
  set printType(String printType) => _printType = printType;
  int get averageRating => _averageRating;
  set averageRating(int averageRating) => _averageRating = averageRating;
  int get ratingsCount => _ratingsCount;
  set ratingsCount(int ratingsCount) => _ratingsCount = ratingsCount;
  String get maturityRating => _maturityRating;
  set maturityRating(String maturityRating) => _maturityRating = maturityRating;
  bool get allowAnonLogging => _allowAnonLogging;
  set allowAnonLogging(bool allowAnonLogging) =>
      _allowAnonLogging = allowAnonLogging;
  String get contentVersion => _contentVersion;
  set contentVersion(String contentVersion) => _contentVersion = contentVersion;
  ImageLink get imageLinks => _imageLinks;
  set imageLinks(ImageLink imageLinks) => _imageLinks = imageLinks;
  String get language => _language;
  set language(String language) => _language = language;
  String get previewLink => _previewLink;
  set previewLink(String previewLink) => _previewLink = previewLink;
  String get infoLink => _infoLink;
  set infoLink(String infoLink) => _infoLink = infoLink;
  String get canonicalVolumeLink => _canonicalVolumeLink;
  set canonicalVolumeLink(String canonicalVolumeLink) =>
      _canonicalVolumeLink = canonicalVolumeLink;

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _authors = json['authors'].cast<String>();
    _publisher = json['publisher'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = List<IndustryIdentifier>();
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers.add(IndustryIdentifier.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null
        ? ReadingMode.fromJson(json['readingModes'])
        : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _averageRating = json['averageRating'];
    _ratingsCount = json['ratingsCount'];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _imageLinks = json['imageLinks'] != null
        ? ImageLink.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this._title;
    data['authors'] = this._authors;
    data['publisher'] = this._publisher;
    data['description'] = this._description;
    if (this._industryIdentifiers != null) {
      data['industryIdentifiers'] =
          this._industryIdentifiers.map((v) => v.toJson()).toList();
    }
    if (this._readingModes != null) {
      data['readingModes'] = this._readingModes.toJson();
    }
    data['pageCount'] = this._pageCount;
    data['printType'] = this._printType;
    data['averageRating'] = this._averageRating;
    data['ratingsCount'] = this._ratingsCount;
    data['maturityRating'] = this._maturityRating;
    data['allowAnonLogging'] = this._allowAnonLogging;
    data['contentVersion'] = this._contentVersion;
    if (this._imageLinks != null) {
      data['imageLinks'] = this._imageLinks.toJson();
    }
    data['language'] = this._language;
    data['previewLink'] = this._previewLink;
    data['infoLink'] = this._infoLink;
    data['canonicalVolumeLink'] = this._canonicalVolumeLink;
    return data;
  }
}