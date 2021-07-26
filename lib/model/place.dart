import 'dart:io';

import 'package:flutter/material.dart';

class Place {
  final String id;
  final String title;
  final String location;
  final File image;

  Place({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}
