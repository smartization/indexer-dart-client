// @dart=2.9
part of indexer_api_client.api;

class ItemDTO {
  /* Internal identifier of item */
  int id = null;
/* Name of otem */
  String name = null;
/* Item description */
  String description = null;
/* Numeric or textual barcode of item */
  String barcode = null;
/* Type of barcode like EAN16 */
  String barcodeType = null;
  //enum barcodeTypeEnum {  EAN,  };

  PlaceDTO storagePlace = null;
/* Due date of item */
  JsonDateTime dueDate = null;

  ItemDTO();

  @override
  String toString() {
    return 'ItemDTO[id=$id, name=$name, description=$description, barcode=$barcode, barcodeType=$barcodeType, storagePlace=$storagePlace, dueDate=$dueDate, ]';
  }

  ItemDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    barcode = json['barcode'];
    barcodeType = json['barcodeType'];
    storagePlace = new PlaceDTO.fromJson(json['storagePlace']);
    dueDate = new JsonDateTime.fromJson(json['dueDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'barcode': barcode,
      'barcodeType': barcodeType,
      'storagePlace': storagePlace,
      'dueDate': dueDate
     };
  }

  static List<ItemDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ItemDTO>() : json.map((value) => new ItemDTO.fromJson(value)).toList();
  }

  static Map<String, ItemDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItemDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ItemDTO.fromJson(value));
    }
    return map;
  }
}
