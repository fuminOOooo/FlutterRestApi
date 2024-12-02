part of 'model.dart';

class OneDataStatModel {
  int baseStat;
  int effort;
  OneDataSpeciesModel stat;

  OneDataStatModel({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory OneDataStatModel.fromJson(Map<String, dynamic> json) => OneDataStatModel(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: OneDataSpeciesModel.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat.toJson(),
      };
}
