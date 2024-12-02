part of 'model.dart';
class ResultModel {
  String name;
  String url;
  ResultModel({
      required this.name,
      required this.url,
  });
  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
      name: json["name"],
      url: json["url"],
  );
  Map<String, dynamic> toJson() => {
      "name": name,
      "url": url,
  };
}