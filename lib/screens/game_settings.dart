import 'package:flutter/material.dart';

import 'game.dart';

class GameSettingsScreen extends StatefulWidget {
  const GameSettingsScreen({Key? key}) : super(key: key);

  @override
  State<GameSettingsScreen> createState() => _GameSettingsScreenState();
}

class _GameSettingsScreenState extends State<GameSettingsScreen> {
  int _numberOfPlayers = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Broj igrača',
              style: TextStyle(fontSize: 28, fontFamily: 'MontSerrat')),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => GameScreen(3)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    minimumSize: const Size(60, 60),
                    backgroundColor: Colors.deepPurple[400],
                    foregroundColor: Colors.deepPurple[900],
                    elevation: 10,
                    shadowColor: Colors.deepPurple[400],
                  ),
                  child: const Text('3',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.w900)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _numberOfPlayers = 4;
                    Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => GameScreen(4)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    minimumSize: const Size(60, 60),
                    backgroundColor: Colors.deepPurple[400],
                    foregroundColor: Colors.deepPurple[900],
                    elevation: 10,
                    shadowColor: Colors.deepPurple[400],
                  ),
                  child: const Text('4',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.w900)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _numberOfPlayers = 5;
                    Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => GameScreen(4)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    minimumSize: const Size(60, 60),
                    backgroundColor: Colors.deepPurple[400],
                    foregroundColor: Colors.deepPurple[900],
                    elevation: 10,
                    shadowColor: Colors.deepPurple[400],
                  ),
                  child: const Text('5',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.w900)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _numberOfPlayers = 6;
                    Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => GameScreen(6)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    minimumSize: const Size(60, 60),
                    backgroundColor: Colors.deepPurple[400],
                    foregroundColor: Colors.deepPurple[900],
                    elevation: 10,
                    shadowColor: Colors.deepPurple[400],
                  ),
                  child: const Text('6',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.w900)),
                )
              ],
            ),
          ]),
        ));
  }
}
