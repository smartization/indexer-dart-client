part of indexer_api_client.api;

class PlaceDTO {
  /* Internal place identifier */
  int id = null;
/* Place name */
  String name = null;

  PlaceDTO();

  @override
  String toString() {
    return 'PlaceDTO[id=$id, name=$name, ]';
  }

  PlaceDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
     };
  }

  static List<PlaceDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<PlaceDTO>() : json.map((value) => new PlaceDTO.fromJson(value)).toList();
  }

  static Map<String, PlaceDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PlaceDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PlaceDTO.fromJson(value));
    }
    return map;
  }
}
