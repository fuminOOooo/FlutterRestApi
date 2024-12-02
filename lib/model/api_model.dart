part of 'model.dart';

ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));
String apiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
  int count;
  String next;
  dynamic previous;
  List<ResultModel> results;
  ApiModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });
  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<ResultModel>.from(json["results"].map((x) => ResultModel.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
