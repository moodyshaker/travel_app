import 'dart:io';

import 'package:flutter/material.dart';
import 'package:travel_app/model/place.dart';
import 'package:travel_app/screens/add_place.dart';
import 'package:travel_app/widget/travel_item.dart';

class Home extends StatelessWidget {
  static const String id = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            AddPlace.id,
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        title: Text('Places'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.6),
        itemBuilder: (context, i) => TravelItem(
          place: Place(
              id: '123',
              title: 'Cairo',
              location: 'Egypt',
              image: File('assets/images/1.jpg')),
        ),
        itemCount: 9,
      ),
    );
  }
}
