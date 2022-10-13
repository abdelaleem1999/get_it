class Model {
  Model({
    required this.id,
    required this.image,
    required this.caption,
    required this.category,
  });
  late final int id;
  late final String image;
  late final String caption;
  late final String category;

  Model.fromJson(Map<String, dynamic> json){
    id = json['id'];
    image = json['image'];
    caption = json['caption'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    _data['caption'] = caption;
    _data['category'] = category;
    return _data;
  }
}