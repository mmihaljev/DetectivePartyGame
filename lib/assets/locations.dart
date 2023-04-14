import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Location {
  String name;
  String image;
  Location(this.name, this.image);
}

List<Location> Locations = [
  Location('Kuhinja', "lib/assets/kitchen.jpg"),
  Location('Plaža', "lib/assets/Beach.jpg"),
  Location('Podrum', "lib/assets/Basement.jpg"),
  Location('Krstarenje', "lib/assets/cruise.png"),
  Location('Skijalište', "lib/assets/Ski_resort.jpg"),
  Location('Spavaća soba', "lib/assets/bedroom.jpg"),
  Location('Toplice', "lib/assets/spa-with-pool-and-jacuzzi.jpg"),
  Location('Restoran', "lib/assets/restaurant.jpg"),
  Location('Stadion', "lib/assets/stadium.jpg"),
  Location('Dnevna soba', "lib/assets/livingRoom.jpg"),
  Location("Džungla", "lib/assets/jungle.jpg"),
  Location("Avion", "lib/assets/airplane.jpg"),
  Location("Zatvor", "lib/assets/prison.jpg")
];