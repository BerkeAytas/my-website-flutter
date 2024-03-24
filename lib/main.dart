import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zerom/zerom.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Caveat",
        scaffoldBackgroundColor: const Color(0xFF191919),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.1),
          horizontal: context.dynamicWidth(0.1)),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1A1A1A),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 68,
            spreadRadius: 20,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
              child: Center(
            child: SizedBox(
              child: RotatedBox(
                quarterTurns: 3,
                child: AutoSizeText(
                  "Mobile Developer",
                  style: context.theme.textTheme.bodyLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                flex: 2,
                child: AutoSizeText(
                  "Hello\nI am\nBerke Aytaş",
                  style: context.theme.textTheme.displayLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: context.dynamicWidth(0.03)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("Pressed");
                        }),
                    SizedBox(width: 10),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("Pressed");
                        }),
                    SizedBox(width: 10),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.medium,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("Pressed");
                        }),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
