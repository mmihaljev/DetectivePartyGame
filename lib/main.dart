import 'package:flutter/material.dart';
import 'package:detective_app/screens/game_settings.dart';
import 'package:detective_app/screens/rules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detective',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black87,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/start_game_bg.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 40),
              Column(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  const SizedBox(height: 200),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => const GameSettingsScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(80, 80),
                        backgroundColor: Colors.black54,
                        foregroundColor: Colors.white70,
                        elevation: 20,
                        shadowColor: Colors.white38,
                        padding: EdgeInsets.symmetric(horizontal: 40)
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'Start game',
                            style: TextStyle(
                              fontFamily: 'CourierPrime',
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.play_arrow_outlined, size: 60),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Rules()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          minimumSize: const Size(80, 80),
                          backgroundColor: Colors.black54,
                          foregroundColor: Colors.white,
                          elevation: 20,
                          shadowColor: Colors.white54,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Rules',
                            style: TextStyle(
                              fontFamily: 'CourierPrime',
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(Icons.rule, size: 44),
                        ],
                      ),
                    ),
                  ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
