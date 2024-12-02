part of 'model.dart';

class OneDataCriesModel {
  String latest;
  String legacy;

  OneDataCriesModel({
    required this.latest,
    required this.legacy,
  });

  factory OneDataCriesModel.fromJson(Map<String, dynamic> json) =>
      OneDataCriesModel(
        latest: json["latest"],
        legacy: json["legacy"],
      );

  Map<String, dynamic> toJson() => {
        "latest": latest,
        "legacy": legacy,
      };
}
