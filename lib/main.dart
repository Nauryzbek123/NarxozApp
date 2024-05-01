import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/features/app/my_app.dart';

void main() async {
  initGetIt();
  configureDependencies();

  runApp(MyApp());
}
