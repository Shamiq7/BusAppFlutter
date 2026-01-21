import 'package:flutter/material.dart';

final List<Map<String, dynamic>> BusDetails = [
  {
    'title': 'Red Bus',
    'image': 'images/CityBus1.png',
    'color': Colors.blueAccent,

    'details': {
      'seats': 40,
      'Ac': 'Available',
      'luggage': 'Yes',
      'type': 'City Bus',
    },

    'route': {
      'start': 'Udaipur',
      'stops': ['Fatehpura', ' Sukhadia Circle', ' Hiran Magri'],
      'map': 'images/Route01.png',
      'end': 'Hiran Magri',
    },

    'schedule': {
      'first': '6:00 AM',
      'last': '10:00 PM',
      'frequency': 'Every 30 mins',
      'days': 'Mon - Sun',
    },
  },

  {
    'title': 'Blue Bus',
    'image': 'images/CityBus2.png',
    'color': Colors.blue,
    'details': {
      'seats': 40,
      'ac': false,
      'luggage': 'No',
      'type': 'Local Shuttle',
    },

    'route': {
      'start': 'Dabok Airport',
      'stops': ['Delhigate ', 'Court Chauraha', 'Chetak Circle', 'Fateh Sagar'],
      'map': 'images/Route02.png',
      'end': 'Fatehsagar Lake',
    },

    'schedule': {
      'first': '7:00 AM',
      'last': '9:00 PM',
      'frequency': 'Every 45 mins',
      'days': 'Mon - Sat',
    },
  },

  {
    'title': 'White Bus',
    'image': 'images/CityBus3.png',
    'color': Colors.blueAccent,
    'details': {
      'seats': 40,
      'ac': false,
      'luggage': 'No',
      'type': 'Local Shuttle',
    },

    'route': {
      'start': 'Dabok Airport',
      'stops': ['Sukher', 'Chetak Circle', ' Fatehsagar'],
      'map': 'images/Route01.png',
      'end': 'Fatehsagar Lake',
    },

    'schedule': {
      'first': '7:00 AM',
      'last': '9:00 PM',
      'frequency': 'Every 45 mins',
      'days': 'Mon - Sat',
    },
  },
  {
    'title': 'City Bus',
    'image': 'images/CityBus4.png',
    'color': Colors.blue,
    'details': {
      'seats': 50,
      'ac': true,
      'luggage': 'Yes',
      'type': 'City Express',
    },

    'route': {
      'start': 'City Railway Station',
      'stops': ['Surajpole', " Delhi Gate", ' Court Circle ', ' Panchwati'],
      'map': 'images/Route01.png',
      'end': 'Nathdwara Highway',
    },

    'schedule': {
      'first': '5:30 AM',
      'last': '11:00 PM',
      'frequency': 'Every 20 mins',
      'days': 'Mon - Sun',
    },
  },
];
