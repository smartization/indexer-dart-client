part of indexer-api-client.api;

class BarcodeDTO {
  /* Contains item title obtained from resolving api */
  String title = null;
/* Barcode numeric or textual value */
  String value = null;
/* Result of searching in external api */
  String searchResult = null;
/* Time when barcode was resolved */
  DateTime processingTime = null;
/* Site from which barcode was resolved */
  String link = null;

  BarcodeDTO();

  @override
  String toString() {
    return 'BarcodeDTO[title=$title, value=$value, searchResult=$searchResult, processingTime=$processingTime, link=$link, ]';
  }

  BarcodeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    value = json['value'];
    searchResult = json['searchResult'];
    processingTime = json['processingTime'] == null ? null : DateTime.parse(json['processingTime']);
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
      'searchResult': searchResult,
      'processingTime': processingTime == null ? '' : processingTime.toUtc().toIso8601String(),
      'link': link
     };
  }

  static List<BarcodeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<BarcodeDTO>() : json.map((value) => new BarcodeDTO.fromJson(value)).toList();
  }

  static Map<String, BarcodeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BarcodeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BarcodeDTO.fromJson(value));
    }
    return map;
  }
}
