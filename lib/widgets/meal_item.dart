import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String image;
  final String id;
  final String title;
  final int duration;
  final String complexity;
  final String affordability;

  MealItem({
    @required this.title,
    @required this.id,
    @required this.duration,
    @required this.image,
    @required this.complexity,
    @required this.affordability,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onMealClick(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$duration min',
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.work,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        complexity,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.kitchen,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        affordability,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _onMealClick(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/meal_detail',
      arguments: {
        'meal_id': id,
      },
    );
  }
}
