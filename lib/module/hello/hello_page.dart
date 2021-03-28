import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';

import '../../plugin/plugin.dart';

class HelloPage extends StatefulWidget {
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  KiwiContainer container = KiwiContainer();

  @override
  Widget build(BuildContext context) {
    InnerPeacePlugin plugin = container.resolve<InnerPeacePlugin>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          FutureBuilder<String>(
            future: plugin.hello(),
            builder: (c, snapshot) {
              if (!snapshot.hasData) {
                return Text('Hello插件执行出错');
              }
              return Text(snapshot.data ?? '');
            },
          )
        ],
      )),
    );
  }
}
