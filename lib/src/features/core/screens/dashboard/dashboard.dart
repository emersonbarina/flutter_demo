import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/constants/sizes.dart';
import 'package:flutter_demo_theme/src/constants/text_strings.dart';
import 'package:flutter_demo_theme/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:flutter_demo_theme/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:flutter_demo_theme/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:flutter_demo_theme/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:flutter_demo_theme/src/features/core/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variables
    final textTheme = Theme.of(context).textTheme;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDark = brightness == Brightness.dark;
    return Scaffold(
      appBar: DashboardAppBar(isDark: isDark,),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // heading
              Text(tDashboardTitle, style: textTheme.bodyText1),
              Text(tDashboardSubTitle, style: textTheme.headline2),
              const SizedBox(height: tDashboardPadding),

              // Search box
              DashboardSearch(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),

              // Categories
              DashboardCategories(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),

              // Banners
              DashboardBanners(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),

              // Top Course
              Text(tDashboardTopCourses, style: textTheme.headline4?.apply(fontSizeFactor: 1.2)),
              DashboardTopCourses(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}

