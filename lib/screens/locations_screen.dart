import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

import '../assets/locations.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Padding(
          padding: EdgeInsets.all(12),
          child: Text('Lokacije',
              style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Bangers',
                  fontWeight: FontWeight.w900,
                  color: Colors.white)),
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8),
          itemCount: Locations.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TransparentImageCard(
                  width: double.infinity,
                  imageProvider: AssetImage(Locations[index].image),
                  title: Text(
                    Locations[index].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bangers',
                        fontSize: 28),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
