import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/features/core/models/Dashboard/top_courses_model.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDark = brightness == Brightness.dark;
    final list = DashboardTopCoursesModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: isDark ? tCardBgColorBlack : tCardBgColor),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(list[index].title,
                            style: textTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis),
                      ),
                      Flexible(child: Image(image: AssetImage(list[index].image), height: 110)),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                        onPressed: list[index].onPress,
                        child: const Icon(Icons.play_arrow),
                      ),
                      const SizedBox(height: tDashboardPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].heading, style: textTheme.headline4, overflow: TextOverflow.ellipsis),
                          Text(list[index].subHeading, style: textTheme.bodyText1, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
