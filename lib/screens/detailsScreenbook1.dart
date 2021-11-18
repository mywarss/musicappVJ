import 'package:flutter/material.dart';
import 'package:mmm/consttants.dart';
import 'package:mmm/widgets/book_rating.dart';
import 'package:mmm/widgets/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.yellow.shade800,
                          Colors.yellow.shade500,
                        ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: size.height * .1),
                        Bookinfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Chapterbook(
                        chapternumber: 1,
                        press: () {},
                      ),
                      Chapterbook(
                        chapternumber: 2,
                        press: () {},
                      ),
                      Chapterbook(
                        chapternumber: 3,
                        press: () {},
                      ),
                      Chapterbook(
                        chapternumber: 4,
                        press: () {},
                      ),
                      Chapterbook(
                        chapternumber: 5,
                        press: () {},
                      ),
                      Chapterbook(
                        chapternumber: 6,
                        press: () {},
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(
                          text: "หวังว่าคุณจะ",
                        ),
                        TextSpan(
                          text: "ชอบเรื่องนี้น่ะ...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            top: 24,
                            right: 150,
                          ),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: cLightBlackColor),
                                  children: [
                                    TextSpan(
                                      text: "เรื่องผีรอบๆโลก \n",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "ผีสยองของอาถรรพ์",
                                      style: TextStyle(color: cLightBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    score: 6.0,
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: RoundedButton(
                                      text: "อ่าน",
                                      verticalPadding: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/book-3.jpg",
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class Chapterbook extends StatelessWidget {
  final int chapternumber;
  final Function press;
  const Chapterbook({
    Key key,
    this.chapternumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "ตอนที่ $chapternumber",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          ),
        ],
      ),
    );
  }
}

class Bookinfo extends StatelessWidget {
  const Bookinfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              Text(
                "ผีโรงเรียนเกาหลี",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "รู้จักความเชื่อ และตำนานหลอนของโรงเรียนเกาหลีผ่านการ์ตูนหลอนระทึก! เรื่องผีๆ รอบโลก เล่ม ผีโรงเรียนเกาหลี จะพาผู้อ่านดำดิ่งสู่บรรยากาศน่าขนลุก ผ่านเรื่องราวภูตผีปีศาจจากเกาหลีที่ทุกคนอาจยังไม่รู้ เช่น กระจกห้องเต้นรำ ไทม์แคปซูล คลั่งผอม และเสียงคลาน เป็นต้น รวมถึงเรื่องเล่าลึกลับเขย่าขวัญอื่น ๆ อีกมากมายที่น่าติดตามไม่แพ้กัน",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "อ่าน",
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.favorite_border), onPressed: () {}),
                      BookRating(score: 5.0),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        )
      ],
    );
  }
}
