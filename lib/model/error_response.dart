part of indexer-api-client.api;

class ErrorResponse {
  
  int timestamp = null;

  int status = null;

  String error = null;

  String message = null;

  String path = null;

  ErrorResponse();

  @override
  String toString() {
    return 'ErrorResponse[timestamp=$timestamp, status=$status, error=$error, message=$message, path=$path, ]';
  }

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timestamp = json['timestamp'];
    status = json['status'];
    error = json['error'];
    message = json['message'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp,
      'status': status,
      'error': error,
      'message': message,
      'path': path
     };
  }

  static List<ErrorResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorResponse>() : json.map((value) => new ErrorResponse.fromJson(value)).toList();
  }

  static Map<String, ErrorResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorResponse.fromJson(value));
    }
    return map;
  }
}
