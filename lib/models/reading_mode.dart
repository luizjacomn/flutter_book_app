class ReadingMode {
  bool _text;
  bool _image;

  ReadingMode({bool text, bool image}) {
    this._text = text;
    this._image = image;
  }

  bool get text => _text;
  set text(bool text) => _text = text;
  bool get image => _image;
  set image(bool image) => _image = image;

  ReadingMode.fromJson(Map<String, dynamic> json) {
    _text = json['text'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['text'] = this._text;
    data['image'] = this._image;
    return data;
  }
}