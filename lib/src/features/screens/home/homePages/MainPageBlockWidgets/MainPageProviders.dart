import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/bloc/home_bloc.dart';
import 'package:provider/provider.dart';

class MainPageProviders extends StatelessWidget {
  const MainPageProviders({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      BlocProvider(create: (context) => getIt<HomeBloc>() )
    ],child: child,);
  }
}
