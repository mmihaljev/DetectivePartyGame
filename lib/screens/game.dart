import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tajni_agent_app/screens/timer_screen.dart';

import '../assets/locations.dart';

class GameScreen extends StatefulWidget {
  int numberOfPlayers;
  int minutes;
  int numOfAgents;

  GameScreen(this.numberOfPlayers, this.minutes, this.numOfAgents);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Location map;
  late List<int> agent;
  int _counter = 0;

  _chooseRandom() {
    print(widget.numOfAgents);
    final random = Random();
    agent = <int>[];
    map = Locations[random.nextInt(Locations.length)];
    agent.add(random.nextInt(widget.numberOfPlayers));
    if(widget.numOfAgents == 2) {
      do {
        agent.add(random.nextInt(widget.numberOfPlayers));
      } while (agent[1] == agent[0]);
    } else if (widget.numOfAgents == 3) {
      do {
        agent.add(random.nextInt(widget.numberOfPlayers));
        agent.add(random.nextInt(widget.numberOfPlayers));
      } while (agent[1] == agent[0] || agent[0] == agent[2] || agent[1] == agent[2]);
    }
  }

  bool _isActive = false;

  _continue() {
    if (_counter == widget.numberOfPlayers) {
      Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => TimerScreen(widget.minutes)));
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
                    'Next player',
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'CourierPrime',
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
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.black,
                  elevation: 10,
                  shadowColor: Colors.white54,
                ),
                child: Icon(Icons.play_arrow_outlined, size: 60),
              ),
            ],
          ),
        ),
      );
    } else if (_isActive && !agent.contains(_counter)){
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
                  Stack(
                    children: [
                      Text(
                        map.name,
                        style: const TextStyle(
                          fontSize: 48,
                          fontFamily: 'CourierPrime',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        map.name,
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'CourierPrime',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.black,
                        ),
                      ),
                    ]
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
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                    child: Icon(Icons.play_arrow_outlined, size: 60),
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
                'Detective!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'CourierPrime',
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
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.black,
                  elevation: 10,
                  shadowColor: Colors.white54,
                ),
                child: Icon(Icons.play_arrow_outlined, size: 60),
              ),
            ],
          ),
        ),
      );
    }
  }
}
