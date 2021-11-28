
class BackendResponse<T> {
  String? message;
  dynamic data;

  BackendResponse({
    this.message,
    this.data
  });

  factory BackendResponse.fromJson(Map<String, dynamic> json, fromJsonModel) {
    final rawData = json['data'].cast<Map<String, dynamic>>();
    dynamic castedData;
    if (rawData != null) {
      if (rawData is T) {
        castedData = fromJsonModel(rawData);
      }
      if (rawData is List<T>) {
        castedData = List<T>.from(rawData.map(fromJsonModel));
      }
    }
    return BackendResponse<T>(
      data: castedData,
      message: json['message']
    );
  }
}