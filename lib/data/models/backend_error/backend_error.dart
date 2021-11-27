import 'dart:convert';

BackendError backendErrorFromJson(String str) => BackendError.fromJson(json.decode(str));
BackendError backendErrorFromMap(Map<String, dynamic> map) => BackendError.fromJson(map);
String backendErrorToJson(BackendError data) => json.encode(data.toJson());

class BackendError {
  BackendError({
    this.message,
  });

  String? message;

  factory BackendError.fromJson(Map<String, dynamic> json) => BackendError(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}