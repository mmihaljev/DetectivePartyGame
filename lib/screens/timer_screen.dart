import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:detective_app/main.dart';
import 'package:detective_app/screens/locations_screen.dart';

class TimerScreen extends StatelessWidget {
  TimerScreen(this.counterTime);

  final int counterTime;
  final CountDownController controller = new CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('PLAY!',
                    style: TextStyle(
                        fontSize: 80,
                        fontFamily: 'CourierPrime',
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NeonCircularTimer(
                        textStyle: const TextStyle(
                          fontSize: 40,
                          fontFamily: 'CourierPrime',
                          color: Colors.white,
                        ),
                        onComplete: () {
                          controller.restart();
                        },
                        width: 200,
                        controller: controller,
                        duration: counterTime * 60,
                        strokeWidth: 10,
                        isTimerTextShown: true,
                        neumorphicEffect: true,
                        outerStrokeColor: Colors.black54,
                        innerFillGradient: LinearGradient(colors: [
                          Colors.white54,
                          Colors.blueAccent.shade400
                        ]),
                        neonGradient: LinearGradient(
                            colors: [Colors.white, Colors.blueAccent.shade400]),
                        strokeCap: StrokeCap.round,
                        innerFillColor: Colors.black87,
                        backgroudColor: Colors.black87,
                        neonColor: Colors.blue.shade900),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 40, top: 40, bottom: 40),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                icon: const Icon(
                                  Icons.play_circle_outline_sharp,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                onPressed: () {
                                  controller.resume();
                                }),
                            IconButton(
                                icon: const Icon(
                                  Icons.pause_circle_outline,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                onPressed: () {
                                  controller.pause();
                                }),
                            IconButton(
                                icon: const Icon(
                                  Icons.restart_alt_outlined,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute<void>(
                                          builder: (BuildContext context) =>
                                              const MyHomePage()));
                                }),
                          ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const LocationsScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 28,
                        fontFamily: 'CourierPrime',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Show locations'),
                  ),
                ),
              ]),
        ));
  }
}
