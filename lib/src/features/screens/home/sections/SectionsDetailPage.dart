import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';
import '../../../app/widgets/DayliOrSectButton.dart';

class SectionsDetailPage extends StatefulWidget {
  const SectionsDetailPage({super.key});

  @override
  State<SectionsDetailPage> createState() => _SectionsDetailPageState();
}

class _SectionsDetailPageState extends State<SectionsDetailPage> {
  int pageIndex = 0;
  
  List<Widget> list1 = [
    containerColor(AppColors.greyLightColor, 'assets/png/Teacher.png'),
    containerColor(AppColors.greyLightColor, 'assets/png/Teacher.png'),
    containerColor(AppColors.greyLightColor, 'assets/png/Teacher.png')
  ];

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(
          width: fullWidth,
          height: 250,
          child: Stack(
            children: [
              PageView(
                children: [
                  ...list1
                      .map((widget) => SizedBox.expand(child: widget))
                      .toList(),
                ],
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
              Positioned(
                top: 50,
                left: 0,
                child: Row(
                  children: [
                    RowSpacer(3),
                    GoBackCircleWidget(
                        color: AppColors.regularBlacColor.withOpacity(0.24)),
                    RowSpacer(3),
                    ManropeText(
                      "Общая Физическая Под...",
                      18,
                      AppColors.whiteColor,
                      FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < list1.length; i++)
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 9.0,
                          height: 9.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: pageIndex == i
                                ? AppColors.whiteColor
                                : AppColors.regularBlacColor.withOpacity(1),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ColumnSpacer(2),
        Padding(
          padding: const EdgeInsets.only(right: 60),
          child: ManropeText(
                        "Общая Физическая Подготовка",
                        16,
                        AppColors.boldBlackColor,
                        FontWeight.w700,
                      ),
        ),
        DayliOrSectButton()
      ],
    )));
  }
}

Widget ContainerImg(String img) {
  return Image.asset(
    img,
    fit: BoxFit.fill,
    width: 200,
    height: 200,
  );
}

Widget containerColor(Color color, String backgroundImageUrl) {
  return Container(
    width: double.infinity,
    height: 250,
    decoration: BoxDecoration(
      color: color,
      image: DecorationImage(
        image: AssetImage(backgroundImageUrl),
        fit: BoxFit.cover, // Adjust the fit as needed
      ),
    ),
    // Add other child widgets or properties as needed
  );
}
