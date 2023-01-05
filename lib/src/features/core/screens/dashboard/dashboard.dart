import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/constants/colors.dart';
import 'package:flutter_demo_theme/src/constants/image_strings.dart';
import 'package:flutter_demo_theme/src/constants/sizes.dart';
import 'package:flutter_demo_theme/src/constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variables
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          tAppName,
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            child: IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(tUserProfileImage)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // heading
              Text(
                tDashboardTitle,
                style: textTheme.bodyText1,
              ),
              Text(
                tDashboardSubTitle,
                style: textTheme.headline2,
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),

              // Search box
              Container(
                decoration: const BoxDecoration(
                  border: Border(left: BorderSide(width: 4)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tDashboardSearch,
                      style: textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)),
                    ),
                    const Icon(
                      Icons.mic,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: tDashboardPadding),

              // Categories
              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                            child: Center(
                              child: Text(
                                "JS",
                                style: textTheme.headline5?.apply(color: Colors.white),
                              ),
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
                                Text(
                                  "Java Script",
                                  style: textTheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 Lessons",
                                  style: textTheme.bodyText1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                            child: Center(
                              child: Text(
                                "JS",
                                style: textTheme.headline5?.apply(color: Colors.white),
                              ),
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
                                Text(
                                  "Java Script",
                                  style: textTheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 Lessons",
                                  style: textTheme.bodyText1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                            child: Center(
                              child: Text(
                                "JS",
                                style: textTheme.headline5?.apply(color: Colors.white),
                              ),
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
                                Text(
                                  "Java Script",
                                  style: textTheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 Lessons",
                                  style: textTheme.bodyText1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: tDashboardPadding),

              // Banners
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1st Banner
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                              Flexible(child: Image(image: AssetImage(tBannerImage1))),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Text(
                            tDashboardBannerTitle1,
                            style: textTheme.headline4,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            tDashboardBannerSubTitle,
                            style: textTheme.bodyText1,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: tDashboardCardPadding),
                  // 2nd Banner
                  Expanded(
                    child: Column(
                      children: [
                        // card
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                                  Flexible(child: Image(image: AssetImage(tBannerImage2))),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Text(
                                tDashboardBannerTitle2,
                                style: textTheme.headline4,
                                //maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                tDashboardBannerSubTitle,
                                style: textTheme.bodyText1,
                                //maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(tDashboardButton),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: tDashboardPadding),

              // Top Course
              Text(
                tDashboardTopCourses,
                style: textTheme.headline4?.apply(fontSizeFactor: 1.2),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter Crash Course",
                                      style: textTheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible(child: Image(image: AssetImage(tTopCourseImage1), height: 110)),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(height: tDashboardPadding),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Sections", style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programing Languages", style: textTheme.bodyText1, overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter Crash Course",
                                      style: textTheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible(child: Image(image: AssetImage(tTopCourseImage2), height: 110)),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(height: tDashboardPadding),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Sections", style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programing Languages", style: textTheme.bodyText1, overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter Crash Course",
                                      style: textTheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible(child: Image(image: AssetImage(tTopCourseImage3), height: 110)),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(height: tDashboardPadding),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Sections", style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programing Languages", style: textTheme.bodyText1, overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter Crash Course",
                                      style: textTheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible(child: Image(image: AssetImage(tTopCourseImage1), height: 110)),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(height: tDashboardPadding),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Sections", style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programing Languages", style: textTheme.bodyText1, overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter Crash Course",
                                      style: textTheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible(child: Image(image: AssetImage(tTopCourseImage2), height: 110)),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(height: tDashboardPadding),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Sections", style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programing Languages", style: textTheme.bodyText1, overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
