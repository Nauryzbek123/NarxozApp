import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_colors.dart';

class TextFormFieldGrey extends StatelessWidget {
  final String hint;
  final String prefixIc;
  final String? sufficIc;

  const TextFormFieldGrey({
    Key? key,
    required this.hint,
    required this.prefixIc, 
     this.sufficIc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
          filled: true,
          fillColor: AppColors.textFieldGreyColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFieldGreyColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding as needed
            child: SvgPicture.asset(prefixIc),
          ),
          suffixIcon: sufficIc != null ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(sufficIc!),
          ) : null,
          hintStyle: TextStyle(color: AppColors.textFieldTextColor),
          hintText: hint,
        ),
      ),
    );
  }
}
