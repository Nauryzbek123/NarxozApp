import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/teachers_index_model.dart';

import '../../../../../core/dependencies/getIt.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/onboarding_bold_black_text.dart';
import '../../../../../core/widgets/column_spacer.dart';
import '../logic/bloc/home_bloc.dart';

class teacherIndexView extends StatelessWidget {
  const teacherIndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: SizedBox(
        height: 220,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is MenuError) {
              return const Center(
                child: Text("error"),
              );
            }
            if (state is MenuSuccess) {
        List<TeachersIndexModel> teacherIndexList = state.teacherIndex;

              return Builder(builder: (context) {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: teacherIndexList.length,
                  itemBuilder: (context, index) {
                    _buildContainer(Colors.blue,
                        leftMargin: 22, rightMargin: 10);
                  },
                );
              });
            };
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildContainer(Color color,
      {double leftMargin = 0, double rightMargin = 0}) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 172,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: color,
            ),
          ),
          ColumnSpacer(0.4),
          OnBoardingBoldBlackText("Бахтияр Зайнутдинов", 10),
          ColumnSpacer(0.4),
          Text("Старший преподаватель-тренер",
              style: GoogleFonts.raleway(
                  color: AppColors.NavItemGrey,
                  fontSize: 7,
                  fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}
