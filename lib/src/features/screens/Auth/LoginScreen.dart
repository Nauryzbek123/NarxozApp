import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';
import 'package:narxoz_project/src/features/screens/Auth/UserInfo.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/bloc/auth_bloc.dart';

import '../../../../token/prefs.dart';
import '../../../core/dependencies/getIt.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/widgets/TextFieldGrey.dart';
import '../../../core/widgets/button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final PreferencesService _preferencesService = getIt<PreferencesService>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ColumnSpacer(20),
            const OnBoardingBoldBlackText("Добро пожаловать", 20),
            const ColumnSpacer(5),
            TextFormFieldGrey(
              hint: "Логин",
              prefixIc: 'assets/svg/loginIcon.svg',
              sufficIc: 'none',
              controller: _loginController,
            ),
            const ColumnSpacer(2),
            TextFormFieldGrey(
              hint: "Пароль",
              prefixIc: 'assets/svg/Lock.svg',
              sufficIc: 'assets/svg/HidePassword.svg',
              controller: _passwordController,
            ),
            const ColumnSpacer(1.8),
            Text(
              "Забыли пароль?",
              style: GoogleFonts.manrope(
                  color: AppColors.textFieldTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            const ColumnSpacer(13),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is LogInSuccess) {
                  context.read<AuthBloc>().addUserInfo(state.authData[0]);
                  final data = state.authData[0].data;
                  try {
                    final userInfo = UserInfo(
                      token: data?.token ?? '',
                      user: User(
                        id: data?.user?.id ?? 0,
                        userIdentifier: data?.user?.userIdentifier ?? '',
                        email: data?.user?.email ?? '',
                        name: data?.user?.name ?? '',
                        surname: data?.user?.surname ?? '',
                        middleName: data?.user?.middleName ?? '',
                        avatar: data?.user?.avatar ?? '',
                        userType: data?.user?.userType ?? '',
                        attendanceCount: data?.user?.attendanceCount ?? '',
                      ),
                    );
                    _preferencesService.setTokenKey(data?.token ?? '');
                    context.read<UserInfoProvider>().setUserInfo(userInfo);
                    context.router.replaceAll([BottomNavBar()]);
                  } catch (e) {
                    print('Error creating UserInfo: $e');
                  }
                } else if (state is LogInFailed) {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: const Text(""),
                            content: Text(state.message),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.green,
                                  ))
                            ],
                          ));
                }
              },
              builder: (context, state) {
                return Buttonwidget(
                  text: "Вход",
                  onTap: () => context.read<AuthBloc>().add(
                        LogInUser(
                            id: _loginController.text,
                            password: _passwordController.text),
                      ),
                  containerColor: AppColors.redColor,
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  width: 315,
                  height: 60,
                  circ: 15,
                  icon: 'assets/svg/SignUp.svg',
                );
              },
            ),
            const ColumnSpacer(3),
            Text(_passwordController.text.toString())
          ],
        ),
      ),
    );
  }
}
