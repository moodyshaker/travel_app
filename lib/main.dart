import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:travel_app/screens/add_place.dart';
import 'package:travel_app/screens/place_details.dart';

import 'screens/home.dart';

void main() => runApp(TravelApp());

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id,
      routes: {
        Home.id: (_) => Home(),
        AddPlace.id: (_) => AddPlace(),
        PlaceDetails.id: (_) => PlaceDetails(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
