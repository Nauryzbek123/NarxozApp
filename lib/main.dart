import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/features/app/my_app.dart';
import 'package:narxoz_project/src/features/screens/Auth/UserInfo.dart';
import 'package:provider/provider.dart';

import 'src/features/screens/home/homePages/logic/data/datasource/datasource.dart';
import 'token/network_service.dart';

void main() async {
  initGetIt();
  configureDependencies();

  runApp(
    ChangeNotifierProvider(
    create: (_) => UserInfoProvider(),
    child: MyApp(),
    )
  );
}


