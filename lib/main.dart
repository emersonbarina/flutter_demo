import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_demo_theme/src/utils/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // Internationalizing
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('pt', ''),
      theme: TAppTheme.lighTheme,
      darkTheme: TAppTheme.darkTheme,
      // definition of the theme
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appName),
        leading: const Icon(Icons.account_circle_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Heding",style: Theme.of(context).textTheme.headline2,),
            Text("Sub-heding",style: Theme.of(context).textTheme.subtitle1,),
            Text("Paragraph",style: Theme.of(context).textTheme.bodyText1,),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("outlined"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
            const Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                  image: AssetImage("assets/images/icon-transparent700.png")),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo),
        onPressed: () {},
      ),
    );
  }
}
