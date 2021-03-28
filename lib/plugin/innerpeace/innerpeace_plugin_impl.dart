import 'dart:async';

import 'package:flutter/services.dart';

import '../../common/app/response.dart';
import 'innerpeace_plugin.dart';

class InnerPeacePluginImpl extends InnerPeacePlugin {
  //
  Future<String> hello() async {
    String? s = await chInnerpeace.invokeMethod('hello');

    return s ?? '';
  }

  //
  Future<Response> ping() async {
    Map m = await chInnerpeace.invokeMethod(funcNamePing);
    print(m);

    int code = (m["code"] as double).toInt();
    Response r = Response(code: code);

    return r;
  }
}
