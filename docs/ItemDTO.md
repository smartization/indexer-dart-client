# indexer_api_client.model.ItemDTO

## Load the model package
```dart
import 'package:indexer_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Internal identifier of item | [optional] [default to null]
**name** | **String** | Name of otem | [default to null]
**description** | **String** | Item description | [optional] [default to null]
**barcode** | **String** | Numeric or textual barcode of item | [optional] [default to null]
**barcodeType** | **String** | Type of barcode like EAN16 | [optional] [default to null]
**storagePlace** | [**PlaceDTO**](PlaceDTO.md) |  | [optional] [default to null]
**dueDate** | [**DateTime**](DateTime.md) | Due date of item | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

