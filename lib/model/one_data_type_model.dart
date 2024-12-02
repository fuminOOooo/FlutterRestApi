part of 'model.dart';

class OneDataTypeModel {
    int slot;
    OneDataSpeciesModel type;

    OneDataTypeModel({
        required this.slot,
        required this.type,
    });

    factory OneDataTypeModel.fromJson(Map<String, dynamic> json) => OneDataTypeModel(
        slot: json["slot"],
        type: OneDataSpeciesModel.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
    };
}