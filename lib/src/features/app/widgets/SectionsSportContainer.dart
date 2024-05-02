import 'package:flutter/material.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/models/SectionsIndexModel.dart';

import '../../../core/resources/app_colors.dart';

class SectionsSportContainer extends StatelessWidget {
  final Data data;

  const SectionsSportContainer({Key? key, required this.data}) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            data.icon ?? '', // Use the icon URL from the data
            height: 40, // Adjust height as needed
            width: 40, // Adjust width as needed
          ),
          SizedBox(height: 8),
          Text(
            data.title ?? '', // Use the title from the data
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

