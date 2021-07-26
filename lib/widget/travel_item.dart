import 'package:flutter/material.dart';
import 'package:travel_app/model/place.dart';
import 'package:travel_app/screens/place_details.dart';

class TravelItem extends StatelessWidget {
  final Place place;

  TravelItem({
    this.place,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PlaceDetails.id);
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 2.0,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    child: Image.asset(
                      place.image.path,
                      height: 220.0,
                      width: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 70.0,
                    width: 200.0,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Town',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.near_me,
                              color: Colors.grey[400],
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'Country',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Title',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Enjoy best tips from top travel agencies at best prices',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
