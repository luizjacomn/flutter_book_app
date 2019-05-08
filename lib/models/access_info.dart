import 'package:flutter_book_app/models/epub.dart';
import 'package:flutter_book_app/models/pdf.dart';

class AccessInfo {
  String _country;
  String _viewability;
  bool _embeddable;
  bool _publicDomain;
  String _textToSpeechPermission;
  Epub _epub;
  Pdf _pdf;
  String _webReaderLink;
  String _accessViewStatus;
  bool _quoteSharingAllowed;

  AccessInfo(
      {String country,
        String viewability,
        bool embeddable,
        bool publicDomain,
        String textToSpeechPermission,
        Epub epub,
        Pdf pdf,
        String webReaderLink,
        String accessViewStatus,
        bool quoteSharingAllowed}) {
    this._country = country;
    this._viewability = viewability;
    this._embeddable = embeddable;
    this._publicDomain = publicDomain;
    this._textToSpeechPermission = textToSpeechPermission;
    this._epub = epub;
    this._pdf = pdf;
    this._webReaderLink = webReaderLink;
    this._accessViewStatus = accessViewStatus;
    this._quoteSharingAllowed = quoteSharingAllowed;
  }

  String get country => _country;
  set country(String country) => _country = country;
  String get viewability => _viewability;
  set viewability(String viewability) => _viewability = viewability;
  bool get embeddable => _embeddable;
  set embeddable(bool embeddable) => _embeddable = embeddable;
  bool get publicDomain => _publicDomain;
  set publicDomain(bool publicDomain) => _publicDomain = publicDomain;
  String get textToSpeechPermission => _textToSpeechPermission;
  set textToSpeechPermission(String textToSpeechPermission) =>
      _textToSpeechPermission = textToSpeechPermission;
  Epub get epub => _epub;
  set epub(Epub epub) => _epub = epub;
  Pdf get pdf => _pdf;
  set pdf(Pdf pdf) => _pdf = pdf;
  String get webReaderLink => _webReaderLink;
  set webReaderLink(String webReaderLink) => _webReaderLink = webReaderLink;
  String get accessViewStatus => _accessViewStatus;
  set accessViewStatus(String accessViewStatus) =>
      _accessViewStatus = accessViewStatus;
  bool get quoteSharingAllowed => _quoteSharingAllowed;
  set quoteSharingAllowed(bool quoteSharingAllowed) =>
      _quoteSharingAllowed = quoteSharingAllowed;

  AccessInfo.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _viewability = json['viewability'];
    _embeddable = json['embeddable'];
    _publicDomain = json['publicDomain'];
    _textToSpeechPermission = json['textToSpeechPermission'];
    _epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    _pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    _webReaderLink = json['webReaderLink'];
    _accessViewStatus = json['accessViewStatus'];
    _quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['country'] = this._country;
    data['viewability'] = this._viewability;
    data['embeddable'] = this._embeddable;
    data['publicDomain'] = this._publicDomain;
    data['textToSpeechPermission'] = this._textToSpeechPermission;
    if (this._epub != null) {
      data['epub'] = this._epub.toJson();
    }
    if (this._pdf != null) {
      data['pdf'] = this._pdf.toJson();
    }
    data['webReaderLink'] = this._webReaderLink;
    data['accessViewStatus'] = this._accessViewStatus;
    data['quoteSharingAllowed'] = this._quoteSharingAllowed;
    return data;
  }
}