# indexer-api-client.api.ItemControllerApi

## Load the API package
```dart
import 'package:indexer-api-client/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete1**](ItemControllerApi.md#delete1) | **DELETE** /items/{id} | Delete single item pointed by its id
[**get1**](ItemControllerApi.md#get1) | **GET** /items/ | Returns all possible items
[**getById**](ItemControllerApi.md#getById) | **GET** /items/{id} | Returns single entity pointed by it id
[**post1**](ItemControllerApi.md#post1) | **POST** /items/ | Post single item into indexer

# **delete1**
> delete1(item id to be deleted)

Delete single item pointed by its id

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new ItemControllerApi();
var item id to be deleted = 789; // int | 

try {
    api_instance.delete1(item id to be deleted);
} catch (e) {
    print("Exception when calling ItemControllerApi->delete1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item id to be deleted** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get1**
> List<ItemDTO> get1()

Returns all possible items

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new ItemControllerApi();

try {
    var result = api_instance.get1();
    print(result);
} catch (e) {
    print("Exception when calling ItemControllerApi->get1: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ItemDTO>**](ItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getById**
> ItemDTO getById(item id to resolve)

Returns single entity pointed by it id

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new ItemControllerApi();
var item id to resolve = 789; // int | 

try {
    var result = api_instance.getById(item id to resolve);
    print(result);
} catch (e) {
    print("Exception when calling ItemControllerApi->getById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item id to resolve** | **int**|  | 

### Return type

[**ItemDTO**](ItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post1**
> ItemDTO post1(body)

Post single item into indexer

### Example
```dart
import 'package:indexer-api-client/api.dart';

var api_instance = new ItemControllerApi();
var body = new ItemDTO(); // ItemDTO | 

try {
    var result = api_instance.post1(body);
    print(result);
} catch (e) {
    print("Exception when calling ItemControllerApi->post1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ItemDTO**](ItemDTO.md)|  | [optional] 

### Return type

[**ItemDTO**](ItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

