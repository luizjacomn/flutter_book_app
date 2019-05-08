class ImageLink {
  String _smallThumbnail;
  String _thumbnail;

  ImageLink({String smallThumbnail, String thumbnail}) {
    this._smallThumbnail = smallThumbnail;
    this._thumbnail = thumbnail;
  }

  String get smallThumbnail => _smallThumbnail;
  set smallThumbnail(String smallThumbnail) => _smallThumbnail = smallThumbnail;
  String get thumbnail => _thumbnail;
  set thumbnail(String thumbnail) => _thumbnail = thumbnail;

  ImageLink.fromJson(Map<String, dynamic> json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['smallThumbnail'] = this._smallThumbnail;
    data['thumbnail'] = this._thumbnail;
    return data;
  }
}