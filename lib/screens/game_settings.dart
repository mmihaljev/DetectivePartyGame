import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:tajni_agent_app/screens/game.dart';

class GameSettingsScreen extends StatefulWidget {
  const GameSettingsScreen({Key? key}) : super(key: key);

  @override
  State<GameSettingsScreen> createState() => _GameSettingsScreenState();
}

class _GameSettingsScreenState extends State<GameSettingsScreen> {

  int numOfPlayers = 4;
  int minutes = 5;
  int numOfAgents = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.settings_outlined, size: 36),
        title: const Text('Game settings',
            style: TextStyle(
                fontSize: 32,
                fontFamily: 'CourierPrime',
                fontWeight: FontWeight.w900)),
        backgroundColor: Colors.black87,
      ),
      body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                'Choose number of players',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'CourierPrime', fontSize: 24),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(numOfPlayers > 3) numOfPlayers--;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(54, 54),
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        elevation: 10,
                        shadowColor: Colors.white54,
                      ),
                      child: const Text('-',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w900)),
                    ),
                    Text(numOfPlayers.toString(),
                        style: const TextStyle(
                            fontSize: 64,
                            fontFamily: 'MontSerrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(numOfPlayers < 13) numOfPlayers++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(54, 54),
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        elevation: 10,
                        shadowColor: Colors.white54,
                      ),
                      child: const Text('+',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w900)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Number of detectives',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'CourierPrime', fontSize: 24),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(numOfAgents > 1) numOfAgents--;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(54, 54),
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        elevation: 10,
                        shadowColor: Colors.white54,
                      ),
                      child: const Text('-',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w900)),
                    ),
                    Text(numOfAgents.toString(),
                        style: const TextStyle(
                            fontSize: 64,
                            fontFamily: 'MontSerrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(numOfAgents < 3) numOfAgents++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(54, 54),
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        elevation: 10,
                        shadowColor: Colors.white54,
                      ),
                      child: const Text('+',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w900)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                'Game length',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'CourierPrime', fontSize: 24),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(minutes > 3) minutes--;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(54, 54),
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        elevation: 10,
                        shadowColor: Colors.white54,
                      ),
                      child: const Text('-',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w900)),
                    ),
                    Text(minutes.toString(),
                        style: const TextStyle(
                            fontSize: 64,
                            fontFamily: 'MontSerrat',
                            fontWeight: FontWeight.w900,
                        color: Colors.white)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(minutes < 15) minutes++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        minimumSize: const Size(54, 54),
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        elevation: 10,
                        shadowColor: Colors.white54,
                      ),
                      child: const Text('+',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w900)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SwipeButton.expand(
                  thumb: const Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.black,
                  ),
                  height: 54,
                  activeThumbColor: Colors.white70,
                  activeTrackColor: Colors.white12,
                  onSwipe: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => GameScreen(numOfPlayers, minutes, numOfAgents)));
                  },
                  child: const Text(
                    "Swipe to start game",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CourierPrime',
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
      )),
    );
  }
}
