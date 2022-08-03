// @dart=2.9
part of indexer_api_client.api;



class BarcodeControllerApi {
  final ApiClient apiClient;

  BarcodeControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Resolve single barcode
  ///
  /// For single barcode it will try to resolve via google service
  Future<BarcodeDTO> fetch(String barcode) async {
    Object postBody = null;

    // verify required params are set
    if(barcode == null) {
     throw new ApiException(400, "Missing required param: barcode");
    }

    // create path and map variables
    String path = "/barcodes/{barcode}".replaceAll("{format}","json").replaceAll("{" + "barcode" + "}", barcode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'BarcodeDTO') as BarcodeDTO ;
    } else {
      return null;
    }
  }
}
