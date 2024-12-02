part of 'model.dart';
class OneDataModel {
  OneDataCriesModel cries;
  // List<OneDataSpeciesModel> forms;
  int height;
  int id;
  String name;
  int order;
  OneDataSpeciesModel species;
  // List<OneDataSpeciesModel> stats;
  // List<OneDataTypeModel> types;
  int weight;
  OneDataModel({
    required this.cries,
    // required this.forms,
    required this.height,
    required this.id,
    required this.name,
    required this.order,
    required this.species,
    // required this.stats,
    // required this.types,
    required this.weight,
  });

  factory OneDataModel.fromJson(Map<String, dynamic> json) => OneDataModel(
        cries: OneDataCriesModel.fromJson(json["cries"]),
        // forms: List<OneDataSpeciesModel>.from(json["forms"].map((x) => OneDataSpeciesModel.fromJson(x))),
        height: json["height"],
        id: json["id"],
        name: json["name"],
        order: json["order"],
        species: OneDataSpeciesModel.fromJson(json["species"]),
        // stats: List<OneDataSpeciesModel>.from(json["stats"].map((x) => OneDataSpeciesModel.fromJson(x))),
        // types: List<OneDataTypeModel>.from(json["types"].map((x) => OneDataTypeModel.fromJson(x))),
        weight: json["weight"],
      );

  Map<String, dynamic> toJson() => {
        "cries": cries.toJson(),
        // "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
        "height": height,
        "id": id,
        "name": name,
        "order": order,
        "species": species.toJson(),
        // "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        // "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "weight": weight,
      };
}
