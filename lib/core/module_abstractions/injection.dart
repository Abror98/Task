import 'dart:async';

import '../di/injector.dart';

abstract class Injection {
  FutureOr<void> registerDependencies({
    required Injector injector,
  });
}
