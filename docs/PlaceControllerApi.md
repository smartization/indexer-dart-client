# indexer-api-client.api.PlaceControllerApi

## Load the API package
```dart
import 'package:indexer-api-client/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addItem**](PlaceControllerApi.md#addItem) | **PATCH** /places/{placeId}/add/item/{itemId} | Add single item into given place
[**callGet**](PlaceControllerApi.md#callGet) | **GET** /places/{id} | Get one place pointed by id
[**delete**](PlaceControllerApi.md#delete) | **DELETE** /places/{id} | Delete one place pointed by give id
[**getAll**](PlaceControllerApi.md#getAll) | **GET** /places/ | Get all available places
[**post**](PlaceControllerApi.md#post) | **POST** /places/ | Add one place
[**removeItem**](PlaceControllerApi.md#removeItem) | **PATCH** /places/{placeId}/delete/item/{itemId} | Delete single item from given place

# **addItem**
> PlaceDTO addItem(placeId, itemId)

Add single item into given place

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new PlaceControllerApi();
var placeId = 789; // int | Place to which item will be added
var itemId = 789; // int | Item which will be added

try {
    var result = api_instance.addItem(placeId, itemId);
    print(result);
} catch (e) {
    print("Exception when calling PlaceControllerApi->addItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeId** | **int**| Place to which item will be added | 
 **itemId** | **int**| Item which will be added | 

### Return type

[**PlaceDTO**](PlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> PlaceDTO callGet(id)

Get one place pointed by id

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new PlaceControllerApi();
var id = 789; // int | 

try {
    var result = api_instance.callGet(id);
    print(result);
} catch (e) {
    print("Exception when calling PlaceControllerApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PlaceDTO**](PlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(id)

Delete one place pointed by give id

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new PlaceControllerApi();
var id = 789; // int | 

try {
    api_instance.delete(id);
} catch (e) {
    print("Exception when calling PlaceControllerApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAll**
> List<PlaceDTO> getAll()

Get all available places

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new PlaceControllerApi();

try {
    var result = api_instance.getAll();
    print(result);
} catch (e) {
    print("Exception when calling PlaceControllerApi->getAll: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PlaceDTO>**](PlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post**
> PlaceDTO post(body)

Add one place

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new PlaceControllerApi();
var body = new PlaceDTO(); // PlaceDTO | 

try {
    var result = api_instance.post(body);
    print(result);
} catch (e) {
    print("Exception when calling PlaceControllerApi->post: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PlaceDTO**](PlaceDTO.md)|  | [optional] 

### Return type

[**PlaceDTO**](PlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeItem**
> PlaceDTO removeItem(placeId, itemId)

Delete single item from given place

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new PlaceControllerApi();
var placeId = 789; // int | Place from which item will be deleted
var itemId = 789; // int | Item which will be deleted

try {
    var result = api_instance.removeItem(placeId, itemId);
    print(result);
} catch (e) {
    print("Exception when calling PlaceControllerApi->removeItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeId** | **int**| Place from which item will be deleted | 
 **itemId** | **int**| Item which will be deleted | 

### Return type

[**PlaceDTO**](PlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

