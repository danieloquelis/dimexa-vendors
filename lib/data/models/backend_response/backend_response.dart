

class BackendResponse<T> {
  String? message;
  dynamic data;
  int? total;

  BackendResponse({
    this.message,
    this.data,
    this.total
  });

  factory BackendResponse.fromJson(Map<String, dynamic> json, fromJsonModel) {
    var rawData = json['data'];
    dynamic castedData;
    if (rawData != null) {
      try {
        //case when is not a list of the entity
        castedData = fromJsonModel(rawData);
      } catch(e) {
        print(e);
        //ignore
      }

      if (castedData == null) {
        try {
          //case when is a list of entities
          rawData = rawData.cast<Map<String, dynamic>>();
          castedData ??= List<T>.from(rawData.map(fromJsonModel));
        } catch(e) {
          //ignore
        }
      }

    }
    return BackendResponse<T>(
      data: castedData,
      message: json['message'],
      total: json['total']
    );
  }
}