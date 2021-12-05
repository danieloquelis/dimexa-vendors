class ReverseGeocodingResult {
  List<GoogleAddress>? results; // for reverse geocoding
  List<GoogleAddress>? predictions; //for autocomplete
  GoogleAddress? result; //for get places by id
  String? status;

  ReverseGeocodingResult({
    this.results,
    this.predictions,
    this.result,
    this.status
  });

  ReverseGeocodingResult.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        if (v != null && v!.toString().isNotEmpty) results!.add(GoogleAddress.fromJson(v));
      });
    }
    if (json['predictions'] != null) {
      predictions = [];
      json['predictions'].forEach((v) {
        if (v != null && v!.toString().isNotEmpty) predictions!.add(GoogleAddress.fromJson(v));
      });
    }
    if (json['result'] != null) {
      result = GoogleAddress.fromJson(json['result']);
    }
  }

}

class GoogleAddress {
  String? description; //for predictions
  String? formattedAddress;
  String? placeId;
  Geometry? geometry;

  GoogleAddress({
    this.formattedAddress,
    this.placeId,
    this.description,
    this.geometry
  });

  GoogleAddress.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    formattedAddress = json['formatted_address'];
    placeId = json['place_id'];
    if (json['geometry'] != null){
      geometry = Geometry.fromJson(json['geometry']);
    }
  }
}

class Geometry {
  GoogleLocation? location;

  Geometry({
    this.location,
  });

  Geometry.fromJson(Map<String, dynamic> json) {
    if (json['location'] != null){
      location = GoogleLocation.fromJson(json['location']);
    }
  }
}

class GoogleLocation {
  double? lat;
  double? lng;

  GoogleLocation({
    this.lat,
    this.lng
  });

  GoogleLocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }
}