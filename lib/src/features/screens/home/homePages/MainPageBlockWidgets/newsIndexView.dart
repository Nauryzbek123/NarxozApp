import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/bloc/home_bloc.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/news_index_model.dart';

import '../../../../app/widgets/AlbumsWidget.dart';

class newsIndexView extends StatefulWidget {
  const newsIndexView({super.key});

  @override
  State<newsIndexView> createState() => _newsIndexViewState();
}

class _newsIndexViewState extends State<newsIndexView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is MenuError) {
            return const Center(
              child: Text("error"),
            );
          }
          if (state is MenuSuccess) {
            List<NewsIndexModel> newsIndexList = state.newsIndexData;
            return Builder(builder: (context) {
              return SizedBox(
                height: 140,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    _buildContainer(Colors.blue,
                        leftMargin: 22, rightMargin: 10);
                  },
                ),
              );
            }
            );
          }
          return Container();
        },
      ),
    );
  }
}

Widget _buildContainer(Color color,
    {double leftMargin = 0, double rightMargin = 0}) {
  return Container(
    width: 260,
    margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: color,
    ),
  );
}
