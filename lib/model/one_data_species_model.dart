part of 'model.dart';
class OneDataSpeciesModel {
    String name;
    String url;

    OneDataSpeciesModel({
        required this.name,
        required this.url,
    });

    factory OneDataSpeciesModel.fromJson(Map<String, dynamic> json) => OneDataSpeciesModel(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}