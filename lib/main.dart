import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: MaterialColor(0xFFFFE200, <int, Color>{
            50 : Color(0x1AFFE200),
            100 : Color(0x33FFE200),
            200 : Color(0x4DFFE200),
            300 : Color(0x66FFE200),
            400 : Color(0x80FFE200),
            500 : Color(0xFFFFE200),
            600 : Color(0x99FFE200),
            700 : Color(0xB3FFE200),
            800 : Color(0xCCFFE200),
            900 : Color(0xE6FFE200),
          })
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // definition of the theme
      themeMode: ThemeMode.system,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Theme Demo"),
        leading: const Icon(Icons.account_circle_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heding"),
            const Text("Sub-heding"),
            const Text("Paragraph"),
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
