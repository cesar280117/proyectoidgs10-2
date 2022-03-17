class AmiiboModel {
  String? character;
  String? gameSeries;
  String? image;
  String? name;

  AmiiboModel({this.character, this.gameSeries, this.image, this.name});

  factory AmiiboModel.fromJsonMap(Map<String, dynamic> json) {
    return AmiiboModel(
      image: json['image'],
      name: json['name'],
      character: json['character'],
      gameSeries: json['gameSeries']
    );
  }
}
