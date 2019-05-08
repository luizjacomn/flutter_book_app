class Pdf {
  bool _isAvailable;

  Pdf({bool isAvailable}) {
    this._isAvailable = isAvailable;
  }

  bool get isAvailable => _isAvailable;
  set isAvailable(bool isAvailable) => _isAvailable = isAvailable;

  Pdf.fromJson(Map<String, dynamic> json) {
    _isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['isAvailable'] = this._isAvailable;
    return data;
  }
}