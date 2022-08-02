# indexer-api-client.api.BarcodeControllerApi

## Load the API package
```dart
import 'package:indexer-api-client/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch**](BarcodeControllerApi.md#fetch) | **GET** /barcodes/{barcode} | Resolve single barcode

# **fetch**
> BarcodeDTO fetch(barcode)

Resolve single barcode

For single barcode it will try to resolve via google service

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new BarcodeControllerApi();
var barcode = barcode_example; // String | 

try {
    var result = api_instance.fetch(barcode);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeControllerApi->fetch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **barcode** | **String**|  | 

### Return type

[**BarcodeDTO**](BarcodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

