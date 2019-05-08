class IndustryIdentifier {
  String _type;
  String _identifier;

  IndustryIdentifier({String type, String identifier}) {
    this._type = type;
    this._identifier = identifier;
  }

  String get type => _type;
  set type(String type) => _type = type;
  String get identifier => _identifier;
  set identifier(String identifier) => _identifier = identifier;

  IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = this._type;
    data['identifier'] = this._identifier;
    return data;
  }
}