import 'package:benjamin_portfolio/core/models/project_model.dart';

class ApiResponse {
  String? status;
  List<Project> data;
  String? message;

  ApiResponse({
    this.status,
    this.data = const [],
    this.message,
  });

  ApiResponse copyWith({
    String? status,
    List<Project>? data,
    String? message,
  }) =>
      ApiResponse(
        status: status ?? this.status,
        data: data ?? this.data,
        message: message ?? this.message,
      );

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Project>.from(json["data"]!.map((x) => Project.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}
