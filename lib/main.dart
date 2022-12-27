import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
            ElevatedButton(onPressed: (){}, child: Text("Elevated"),),
            OutlinedButton(onPressed: (){}, child: Text("outlined"),),
            TextButton(onPressed: (){}, child: Text("Text Button"),),
            const Padding( 
                padding: const EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/icon-transparent700.png")),
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

