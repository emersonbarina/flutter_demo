import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class DashboardTopCoursesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;
  final String image;

  DashboardTopCoursesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
    this.image,
  );

  static List<DashboardTopCoursesModel> list = [
    DashboardTopCoursesModel("Flutter Crash Course", "3 Sections", "Programing Languages", (){}, tTopCourseImage1 ),
    DashboardTopCoursesModel("Flutter Crash Course", "10 Sections", "Programing Languages", null, tTopCourseImage2 ),
    DashboardTopCoursesModel("Flutter Crash Course", "8 Sections", "Programing Languages", null, tTopCourseImage3 ),
    DashboardTopCoursesModel("Flutter Crash Course", "20 Sections", "Programing Languages", null, tTopCourseImage1 ),
    DashboardTopCoursesModel("Flutter Crash Course", "2 Sections", "Programing Languages", null, tTopCourseImage1 ),
  ];
}
