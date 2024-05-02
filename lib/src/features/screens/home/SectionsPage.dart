import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/bloc/sectionsIndexBloc.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/models/SectionsIndexModel.dart';

import '../../../core/dependencies/getIt.dart';
import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../app/widgets/SectionsSportContainer.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 100 / 2;
    final double itemWidth = 110 / 2;
    return Scaffold(
        body: BlocProvider(
      create: (context) =>
          getIt<SectionsIndexBloc>()..add(GetSectionsIndexEvent()),
      child: Column(
        children: [
          ColumnSpacer(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Image.asset('assets/png/NavBarNarxoz.png'),
              ),
            ],
          ),
          ColumnSpacer(3),
          ManropeText(
            "Секции",
            20,
            AppColors.blackColor,
            FontWeight.w700,
          ),
          BlocBuilder<SectionsIndexBloc, SectionsIndexState>(
            builder: (context, state) {
              if (state is SectionsIndexLoading) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ColumnSpacer(20),
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                );
              } else if (state is SectionsIndexSuccess) {
                List<SectionsIndexModel> data = state.sectionsIndex;

                print('data: ${jsonEncode(data)}');
                int itemCount = 0;
                for (SectionsIndexModel section in data) {
                  if (section.data != null) {
                    itemCount += section.data!.length;
                  }
                }
                return Expanded(
                  child: GestureDetector(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10, // Vertical spacing between items
                          crossAxisSpacing:
                              15, // Horizontal spacing between items
                          childAspectRatio: (itemWidth / itemHeight),
                        ),
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, right: 10),
                        itemCount: itemCount,
                        itemBuilder: (BuildContext context, int index) {
                          int dataIndex = 0;
                          for (SectionsIndexModel section in data) {
                            if (section.data != null &&
                                index < dataIndex + section.data!.length) {
                              return GestureDetector(
                                  onTap: () {
                                    AutoRouter.of(context)
                                        .push(const SectionsDetailRoute());
                                  },
                                  child: SectionsSportContainer(
                                      data: section.data![index - dataIndex]));
                            }
                            dataIndex += section.data?.length ?? 0;
                          }
                        }),
                  ),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    ));
  }
}
