class SearchInfo {
  String _textSnippet;

  SearchInfo({String textSnippet}) {
    this._textSnippet = textSnippet;
  }

  String get textSnippet => _textSnippet;

  set textSnippet(String textSnippet) => _textSnippet = textSnippet;

  SearchInfo.fromJson(Map<String, dynamic> json) {
    _textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['textSnippet'] = this._textSnippet;
    return data;
  }
}
