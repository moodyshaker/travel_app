import 'package:flutter/material.dart';

class AddPlace extends StatelessWidget {
  static const String id = 'ADD_PLACE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Place'),
      ),
      body: Form(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
