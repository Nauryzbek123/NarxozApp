import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:provider/provider.dart';

import '../logic/data/bloc/bloc.dart';
import '../logic/data/datasource/test/testBloc.dart';

class MainPageProviders extends StatelessWidget {
  const MainPageProviders({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      BlocProvider(create: (context) => getIt<HomePageBloc>()..add(HomePageInfo()) )
    ],child: child,);
  }
}
