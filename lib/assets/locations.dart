import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Location {
  String name;
  String image;
  Location(this.name, this.image);
}

List<Location> Locations = [
  Location('Kitchen', "lib/assets/kitchen.jpg"),
  Location('Beach', "lib/assets/Beach.jpg"),
  Location('Basement', "lib/assets/Basement.jpg"),
  Location('Cruise ship', "lib/assets/cruise.png"),
  Location('Ski resort', "lib/assets/Ski_resort.jpg"),
  Location('Bedroom', "lib/assets/bedroom.jpg"),
  Location('Spa', "lib/assets/spa-with-pool-and-jacuzzi.jpg"),
  Location('Restaurant', "lib/assets/restaurant.jpg"),
  Location('Stadium', "lib/assets/stadium.jpg"),
  Location('Living room', "lib/assets/livingRoom.jpg"),
  Location("Jungle", "lib/assets/jungle.jpg"),
  Location("Airplane", "lib/assets/airplane.jpg"),
  Location("Prison", "lib/assets/prison.jpg"),
  Location("Gallery", "lib/assets/gallery.jpg"),
  Location("Zoo", "lib/assets/zoo.jpg"),
  Location("Airport", "lib/assets/airport.jpg"),
  Location("Dinning room", "lib/assets/dinning room.png"),
  Location("Desert", "lib/assets/dessert.jpg"),
  Location("School", "lib/assets/school.jpg"),
  Location("Bathroom", "lib/assets/bathroom.jpg"),
  Location("Library", "lib/assets/library.jpg"),
  Location("Shopping mall", "lib/assets/mall.jpg"),
  Location("Gym", "lib/assets/gym.jpg"),
  Location("Concert hall", "lib/assets/concert.jpg"),
  Location("Cafe", "lib/assets/coffe shop.jpg"),
  Location("Church", "lib/assets/church.jpg"),
  Location("Movies", "lib/assets/movie theatre.jpg"),
  Location("Museum", "lib/assets/museum.jpg"),
  Location("Office", "lib/assets/office.jpg"),
  Location("Park", "lib/assets/park.jpg"),
  Location("Theme park", "lib/assets/theme park.jpg"),
  Location("Golf course", "lib/assets/golf course.jpg"),
  Location("Laboratory", "lib/assets/laboratory.jpg"),
  Location("Night club", "lib/assets/nightclub.jpg"),
  Location("Tennis court", "lib/assets/tennis court.jpg"),
  Location("Cemetery", "lib/assets/cemetery.jpg"),
  Location("Hospital", "lib/assets/hospital.jpg"),
  Location("Bank", "lib/assets/bank.jpg"),
  Location("Bowling alley", "lib/assets/bowling alley.jpg"),
  Location("Train station", "lib/assets/train station.jpg"),
  Location("Hair salon", "lib/assets/hair salon.jpg"),
  Location("Bus station", "lib/assets/bus stop.jpg"),
  Location("Gas station", "lib/assets/gas station.jpg")
];