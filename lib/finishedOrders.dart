import 'package:flutter/material.dart';

class FinishedOrdersPage extends StatefulWidget {
  @override
  _FinishedOrdersPageState createState() => _FinishedOrdersPageState();
}

class _FinishedOrdersPageState extends State<FinishedOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: RectangleWidget(
                  topText: 'ID 1258946',
                  middleText: 'İstanbul',
                  bottomText: 'Adana',
                  imageUrl: 'assets/sidebysideArrows.png',
                  smallRectangleText: 'Teslim Edildi',
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: RectangleWidget(
                topText: 'ID 1258947',
                middleText: 'Ankara',
                bottomText: 'İzmir',
                imageUrl: 'assets/sidebysideArrows.png',
                smallRectangleText: 'Teslim Edildi',
              ),
            ),
            Center(
              child: RectangleWidget(
                topText: 'ID 1258947',
                middleText: 'Ankara',
                bottomText: 'İzmir',
                imageUrl: 'assets/sidebysideArrows.png',
                smallRectangleText: 'Teslim Edildi',
              ),
            ),
            Center(
              child: RectangleWidget(
                topText: 'ID 1258947',
                middleText: 'Ankara',
                bottomText: 'İzmir',
                imageUrl: 'assets/sidebysideArrows.png',
                smallRectangleText: 'Teslim Edildi',
              ),
            ),
            Center(
              child: RectangleWidget(
                topText: 'ID 1258947',
                middleText: 'Ankara',
                bottomText: 'İzmir',
                imageUrl: 'assets/sidebysideArrows.png',
                smallRectangleText: 'Teslim Edildi',
              ),
            ),
            Center(
              child: RectangleWidget(
                topText: 'ID 1258947',
                middleText: 'Ankara',
                bottomText: 'İzmir',
                imageUrl: 'assets/sidebysideArrows.png',
                smallRectangleText: 'Teslim Edildi',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RectangleWidget extends StatelessWidget {
  final String topText;
  final String middleText;
  final String bottomText;
  final String imageUrl;
  final String smallRectangleText;

  RectangleWidget({
    required this.topText,
    required this.middleText,
    required this.bottomText,
    required this.imageUrl,
    required this.smallRectangleText,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle topTextStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.bold);
    final TextStyle middleTextStyle = TextStyle(fontSize: 9, fontWeight: FontWeight.normal);
    final TextStyle bottomTextStyle = TextStyle(fontSize: 9, fontWeight: FontWeight.normal);

    return Container(
      width: 329,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(width: 8),
                    Text(topText, style: topTextStyle),
                    SizedBox(width: 8),
                  ],
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    SizedBox(width: 8),
                    Text(middleText, style: middleTextStyle),
                    SizedBox(width: 8.0),
                    Image.asset(imageUrl, width: 36, height: 37),
                    SizedBox(width: 8.0),
                    Text(bottomText, style: bottomTextStyle),
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          SmallRectangleWidget(
            text: smallRectangleText,
          ),
          SizedBox(width: 8), // Add space between the rectangle and the right edge
        ],
      ),
    );
  }
}

class SmallRectangleWidget extends StatelessWidget {
  final String text;

  SmallRectangleWidget({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white);

    return Container(
      width: 75,
      height: 21,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(text, style: textStyle),
      ),
    );
  }
}