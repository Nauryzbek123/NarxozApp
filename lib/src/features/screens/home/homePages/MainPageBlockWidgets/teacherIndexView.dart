import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/bloc/bloc.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/teachers_index_model.dart';

import '../../../../../core/dependencies/getIt.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/onboarding_bold_black_text.dart';
import '../../../../../core/widgets/column_spacer.dart';

class teacherIndexView extends StatefulWidget {
  const teacherIndexView({super.key});

  @override
  State<teacherIndexView> createState() => _teacherIndexViewState();
}

class _teacherIndexViewState extends State<teacherIndexView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomePageBloc>()..add(HomePageInfo()),
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is RepositoryError) {
            return Text("is a failure");
          }
          if (state is TeacherIndexLoaded) {
            TeachersIndexModel teacherIndex = state.teachersIndex;
            return SizedBox(
                height: 220,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: teacherIndex.data.length,
                  itemBuilder: (context, index) {
                    String fullName =
                        '${teacherIndex.data[index].name}  ${teacherIndex.data[index].middleName} ${teacherIndex.data[index].surname} ';
                    return _buildContainer(teacherIndex.data[index].avatar,
                        fullName, teacherIndex.data[index].shortInfo,
                        leftMargin: 22, rightMargin: 10);
                  },
                ));
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildContainer(
    String img,
    String teacherName,
    String section, {
    double leftMargin = 0,
    double rightMargin = 0,
  }) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      child: Column(
        children: [
          Container(
            width: 160,
            height: 172,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover, // Adjust the BoxFit according to your needs
              ),
            ),
          ),
          ColumnSpacer(0.6),
          OnBoardingBoldBlackText('$teacherName', 10),
          ColumnSpacer(0.4),
          Text('$section',
              style: GoogleFonts.raleway(
                  color: AppColors.NavItemGrey,
                  fontSize: 7,
                  fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}
