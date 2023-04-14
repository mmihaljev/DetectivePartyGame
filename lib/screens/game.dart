import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tajni_agent_app/main.dart';

import '../assets/locations.dart';

class GameScreen extends StatefulWidget {
  int numberOfPlayers;

  GameScreen(this.numberOfPlayers);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Location map;
  late int agent;
  int _counter = 0;

  _chooseRandom() {
    final random = Random();
    map = Locations[random.nextInt(Locations.length)];
    agent = random.nextInt(widget.numberOfPlayers-1)+1;
  }

  bool _isActive = false;

  _continue() {
    if (_counter == widget.numberOfPlayers) {
      Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => MyHomePage()));
      return;
    }
    setState(() {
      if (_isActive) _counter++;
      _isActive = !_isActive;
    });
  }

  @override
  void initState() {
    _chooseRandom();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isActive) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 200),
              const Text(
                'Sljedeći igrač',
                style: TextStyle(
                  fontSize: 52,
                  fontFamily: 'Bangers',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  _continue();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: const Size(100, 100),
                  backgroundColor: Colors.deepPurple[400],
                  foregroundColor: Colors.deepPurple[900],
                  elevation: 10,
                  shadowColor: Colors.deepPurple[400],
                ),
                child: Icon(Icons.play_arrow, size: 60),
              ),
            ],
          ),
        ),
      );
    } else if (_isActive && _counter!=agent){
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(map.image), fit: BoxFit.cover),
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 200),
                  Text(
                    map.name,
                    style: const TextStyle(
                      fontSize: 52,
                      fontFamily: 'Bangers',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      _continue();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      minimumSize: const Size(100, 100),
                      backgroundColor: Colors.deepPurple[400],
                      foregroundColor: Colors.deepPurple[900],
                      elevation: 10,
                      shadowColor: Colors.deepPurple[400],
                    ),
                    child: Icon(Icons.play_arrow, size: 60),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 200),
              const Text(
                'Ti si tajni agent!',
                style: TextStyle(
                  fontSize: 52,
                  fontFamily: 'Bangers',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  _continue();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: const Size(100, 100),
                  backgroundColor: Colors.deepPurple[400],
                  foregroundColor: Colors.deepPurple[900],
                  elevation: 10,
                  shadowColor: Colors.deepPurple[400],
                ),
                child: Icon(Icons.play_arrow, size: 60),
              ),
            ],
          ),
        ),
      );
    }
  }
}
