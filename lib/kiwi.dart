import 'plugin/innerpeace/innerpeace_plugin.dart';
import 'plugin/innerpeace/innerpeace_plugin_impl.dart';
import 'package:kiwi/kiwi.dart';

part 'kiwi.g.dart';

abstract class Injector {
  @Register.factory(InnerPeacePlugin, from: InnerPeacePluginImpl)
  void configure();
}

void setup() {
  var injector = _$Injector();
  injector.configure();
}
