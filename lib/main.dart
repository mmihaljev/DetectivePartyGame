import 'package:flutter/material.dart';
import 'package:tajni_agent_app/screens/game_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tajni agent',
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/pozadina.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Tajni agent',
                style: TextStyle(
                  fontFamily: 'Bangers',
                  fontSize: 60,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Opacity(
                    opacity: 0.75,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/agent.png"),
                          fit: BoxFit.fill
                          ),
                      ),
                      child: const SizedBox(
                        height: 500,
                        width: 180,
                      ),
                    ),
                  ),
                  SizedBox(width: 28),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => const GameSettingsScreen()));
                    },
                    child: Icon(Icons.play_arrow, size: 48),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      minimumSize: const Size(80, 80),
                      backgroundColor: Colors.deepPurple[500],
                      foregroundColor: Colors.deepPurple[900],
                      elevation: 20,
                      shadowColor: Colors.deepPurple[500],
                    ),
                  )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
