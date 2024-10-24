import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

void databaseInsert() async {
  var parseObject = ParseObject("transaction")
    ..set('transTpe', 'Enviada')
    ..set('value', '100')
    ..set('transDate', DateTime(2024, 10, 21))
    ..set('name', 'Pix')
    ..set('remoteUser', 'Galvão');
}
