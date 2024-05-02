import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/bloc/bloc.dart';
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
      create: (context) => getIt<HomePageBloc>()..add(HomePageInfo()),
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is RepositoryError) {
            return Text("is a failure");
          } else if (state is NewsIndexLoaded) {
            List<NewsIndexModel> newsIndex = state.newsIndex;

            return SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: newsIndex[0].data.length,
                itemBuilder: (context, index) {
                  String imgUrl = newsIndex[0].data[index].image;
                  return _buildContainer(imgUrl,
                      leftMargin: 22, rightMargin: 10);
                },
              ),
            );
          }
          ;
          return Container();
        },
      ),
    );
  }
}

Widget _buildContainer(String img,
    {double leftMargin = 0, double rightMargin = 0}) {
  return Container(
    width: 260,
    margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image: DecorationImage(
        image: NetworkImage(img),
        fit: BoxFit.cover, // Adjust the BoxFit according to your needs
      ),
    ),
  );
}
