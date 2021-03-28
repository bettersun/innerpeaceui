import 'dart:async';

import 'package:flutter/services.dart';
import 'package:innerpeaceui/common/app/response.dart';

abstract class InnerPeacePlugin {
  // go-flutter插件中的包名，两者必须一致
  final chInnerpeace = const MethodChannel("bettersun.innerpeace.channel");

  final funcNameHello = 'hello';
  final funcNamePing = 'ping';

  //
  Future<String> hello();

  //
  Future<Response> ping();
}
