# indexer_api_client
API serving infromation for indexer frontend

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.dart.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: indexer_api_client
version: 1.0.0
description: API Client for indexer backend
dependencies:
  indexer_api_client:
    git: https://github.com/smartization/indexer-dart-client.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  indexer_api_client:
    path: /path/to/indexer_api_client
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:indexer_api_client/api.dart';

var api_instance = new BarcodeControllerApi();
var barcode = barcode_example; // String | 

try {
    var result = api_instance.fetch(barcode);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeControllerApi->fetch: $e\n");
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BarcodeControllerApi* | [**fetch**](docs//BarcodeControllerApi.md#fetch) | **GET** /barcodes/{barcode} | Resolve single barcode
*ItemControllerApi* | [**delete1**](docs//ItemControllerApi.md#delete1) | **DELETE** /items/{id} | Delete single item pointed by its id
*ItemControllerApi* | [**get1**](docs//ItemControllerApi.md#get1) | **GET** /items/ | Returns all possible items
*ItemControllerApi* | [**getById**](docs//ItemControllerApi.md#getbyid) | **GET** /items/{id} | Returns single entity pointed by it id
*ItemControllerApi* | [**post1**](docs//ItemControllerApi.md#post1) | **POST** /items/ | Post single item into indexer
*PlaceControllerApi* | [**addItem**](docs//PlaceControllerApi.md#additem) | **PATCH** /places/{placeId}/add/item/{itemId} | Add single item into given place
*PlaceControllerApi* | [**callGet**](docs//PlaceControllerApi.md#callget) | **GET** /places/{id} | Get one place pointed by id
*PlaceControllerApi* | [**delete**](docs//PlaceControllerApi.md#delete) | **DELETE** /places/{id} | Delete one place pointed by give id
*PlaceControllerApi* | [**getAll**](docs//PlaceControllerApi.md#getall) | **GET** /places/ | Get all available places
*PlaceControllerApi* | [**post**](docs//PlaceControllerApi.md#post) | **POST** /places/ | Add one place
*PlaceControllerApi* | [**removeItem**](docs//PlaceControllerApi.md#removeitem) | **PATCH** /places/{placeId}/delete/item/{itemId} | Delete single item from given place

## Documentation For Models

 - [BarcodeDTO](docs//BarcodeDTO.md)
 - [ErrorResponse](docs//ErrorResponse.md)
 - [ItemDTO](docs//ItemDTO.md)
 - [PlaceDTO](docs//PlaceDTO.md)

## Documentation For Authorization

 All endpoints do not require authorization.


## Author


