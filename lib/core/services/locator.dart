import 'package:get_it/get_it.dart';
import 'package:sharp_work/core/core.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  locator.registerSingleton<SharpRouter>(SharpRouter());
}
