import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../models/Dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                  child: Center(
                    child: Text(list[index].title, style: textTheme.headline5?.apply(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading, style: textTheme.headline5, overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading, style: textTheme.bodyText1, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
