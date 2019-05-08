class SaleInfo {
  String _country;
  String _saleability;
  bool _isEbook;

  SaleInfo({String country, String saleability, bool isEbook}) {
    this._country = country;
    this._saleability = saleability;
    this._isEbook = isEbook;
  }

  String get country => _country;
  set country(String country) => _country = country;
  String get saleability => _saleability;
  set saleability(String saleability) => _saleability = saleability;
  bool get isEbook => _isEbook;
  set isEbook(bool isEbook) => _isEbook = isEbook;

  SaleInfo.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['country'] = this._country;
    data['saleability'] = this._saleability;
    data['isEbook'] = this._isEbook;
    return data;
  }
}