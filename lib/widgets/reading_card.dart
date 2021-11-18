import 'package:flutter/material.dart';
import 'package:mmm/consttants.dart';
import 'package:mmm/widgets/book_rating.dart';
import 'package:mmm/widgets/two_side_rounded_button.dart';

class ReadingList extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final Function pressDetais;
  final Function pressRead;
  const ReadingList({
    Key key,
    this.image,
    this.title,
    this.rating,
    this.pressDetais,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, bottom: 40),
      height: 300,
      width: 190,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: cShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
            height: 180,
          ),
          Positioned(
            top: 100,
            left: 140,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  onPressed: () {},
                ),
                BookRating(
                  score: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 216,
            child: Container(
              height: 85,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                    ),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: cBlackColor),
                        children: [
                          TextSpan(
                            text: "$title",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressDetais,
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.symmetric(vertical: 9),
                          alignment: Alignment.center,
                          child: Text("รายละเอียด"),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: "อ่าน",
                          press: pressRead,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
