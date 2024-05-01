import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/column_spacer.dart';

import '../../app/widgets/NewsContainer.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool showAllNews = false;
  int totalNewsCount = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              ColumnSpacer(6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ManropeText(
                    "Новости",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                ],
              ),
              ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: showAllNews ? totalNewsCount : 3, // Show all or default count
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => AutoRouter.of(context).push(const NewsArticle()),
                child: NewsContainer());
            },
          ),
          if (!showAllNews)
          GestureDetector( 
            onTap: (){
              setState(() {
                showAllNews = true;
              });
            },
            child: ManropeText(
                  "Показать еще",
                  12,
                  AppColors.redColor,
                  FontWeight.bold,
                ),
          )
                  
            ],
          ),
        ],
      ),
    ));
  }
}
