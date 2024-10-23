import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

typedef BuildHelper = Future<Widget> Function();

Future<void> bootstrap(BuildHelper helper) async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationSupportDirectory(),
  );
  if (kDebugMode) {
    await HydratedBloc.storage.clear();
  }
  runApp(
    await helper()
  );
}