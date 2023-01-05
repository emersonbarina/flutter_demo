import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';

class DashboardSearch extends StatelessWidget {
  const DashboardSearch({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tDashboardSearch, style: textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5))),
          const Icon(Icons.mic, size: 25),
        ],
      ),
    );
  }
}
