import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class SectionsSportContainer extends StatelessWidget {
  const SectionsSportContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.09), // Border color
                    width: 2, // Border width
                  ),
                ),
              );
  }
}
