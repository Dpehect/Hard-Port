import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easyportmobill/finishedOrders.dart';

class ExpandedContentWidgetOffers extends StatelessWidget {
  final String extraInfo1;
  final String extraInfo2;
  final String imageUrl;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String rectangleText;
  final String rectangleImageUrl;
  final String rectangleInnerText1;
  final String rectangleInnerText2;
  final String rectangleInnerText3;
  final String rectangleInnerTextTitle1;
  final String rectangleInnerTextTitle2;
  final String rectangleInnerTextTitle3;
  final String additionalImageUrl;
  final String additionalImageUrlWithText;
  final String additionalText1;
  final String addressText1;
  final String addressText2;
  final String addressText3;
  final String additionalText2;
  final String clockImageUrl;
  final String clockText1;
  final String clockText2;
  final String clockText3;
  final String clockText4;
  final String clockText5;
  final String clockText6;
  final String clockText7;
  final String clockText8;
  final String clockText9;
  final String clockText10;
  final String clockText11;
  final String clockText12;
  final String underImageUrl1;
  final String underImageUrl2;
  final String userText;

  ExpandedContentWidgetOffers({
    required this.extraInfo1,
    required this.extraInfo2,
    required this.imageUrl,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.rectangleText,
    required this.rectangleImageUrl,
    required this.rectangleInnerText1,
    required this.rectangleInnerText2,
    required this.rectangleInnerText3,
    required this.rectangleInnerTextTitle1,
    required this.rectangleInnerTextTitle2,
    required this.rectangleInnerTextTitle3,
    required this.additionalImageUrl,
    required this.additionalImageUrlWithText,
    required this.additionalText1,
    required this.addressText1,
    required this.addressText2,
    required this.addressText3,
    required this.additionalText2,
    required this.clockImageUrl,
    required this.clockText1,
    required this.clockText2,
    required this.clockText3,
    required this.clockText4,
    required this.clockText5,
    required this.clockText6,
    required this.clockText7,
    required this.clockText8,
    required this.clockText9,
    required this.clockText10,
    required this.clockText11,
    required this.clockText12,
    required this.underImageUrl1,
    required this.underImageUrl2,
    required this.userText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17.0, left: 12.0),
              child: Image.asset(imageUrl, width: 51, height: 51),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17.0, left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(extraInfo1, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text(extraInfo2, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 17, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Define the action when the first image is tapped
                        },
                        child: Image.asset(imageUrl1, width: 23, height: 21, fit: BoxFit.cover),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Define the action when the second image is tapped
                        },
                        child: Image.asset(imageUrl2, width: 23, height: 21, fit: BoxFit.cover),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Define the action when the third image is tapped
                        },
                        child: Image.asset(imageUrl3, width: 23, height: 21, fit: BoxFit.cover),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 116,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(rectangleText, style: TextStyle(fontSize: 9)),
                          Image.asset(rectangleImageUrl, width: 18, height: 23),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Container(
              width: 302,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(rectangleInnerTextTitle1, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                            Text(rectangleInnerText1, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(rectangleInnerTextTitle2, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                            Text(rectangleInnerText2, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(rectangleInnerTextTitle3, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                            Text(rectangleInnerText3, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageTextRectangle(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(additionalImageUrl, width: 30, height: 104),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(additionalImageUrlWithText, width: 23, height: 23),
                            SizedBox(width: 5),
                            Text(additionalText1, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(addressText1, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                        Text(addressText2, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                        SizedBox(height: 13),
                        Row(
                          children: [
                            Image.asset(additionalImageUrlWithText, width: 23, height: 23),
                            SizedBox(width: 5),
                            Text(additionalText1, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(addressText3, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(clockImageUrl, width: 30, height: 104),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 25),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText1, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                color: Color(0xFFFCF2E7),
                                child: Text(clockText2, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText3, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(clockImageUrl, width: 30, height: 104),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 25),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText4, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                color: Color(0xFFFCF2E7),
                                child: Text(clockText5, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText6, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(underImageUrl1, width: 30, height: 40),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText7, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText8, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText9, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(underImageUrl2, width: 30, height: 40),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(additionalImageUrlWithText, width: 23, height: 23),
                                  SizedBox(width: 5),
                                  Text(userText, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText10, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(clockText12, style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 148,
                        height: 51,
                        child: ElevatedButton(
                          onPressed: () {
                            _showBottomSheet1(context);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Color(0xFF5FAF5F),
                          ),
                          child: Text(
                            'Önerilen Fiyat',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Yatay boşluk
                      Container(
                        width: 148,
                        height: 51,
                        child: ElevatedButton(
                          onPressed: () {
                            _showBottomSheet2(context);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Color(0XFFDB5442),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Şimdi Satın Al',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text(
                                '502₺',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ],
    );
  }
}

void _showBottomSheet1(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    backgroundColor: Colors.white,
    isDismissible: true, // Bottom sheet dışında bir yere dokununca kapansın
    enableDrag: true, // Kullanıcı kaydırarak kapatabilir
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16.0),
        height: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ID 1258946 Fiyat Önerisi',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF3F3E45)),
            ),
            Text(
              'Sistemin Size Önerdiği Fiyat',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF62CF6D)),
            ),
            SizedBox(height: 17),
            Text(
              'Fiyat',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF3F3E45)),
            ),
            InnerRectangleWidget(
              width: 309,
              height: 40,
              color: Color(0xFFFCF2E7),
              text: '254₺',
            ),
            Text(
              'Tarihine Kadar Geçerli',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Color(0xFF3F3E45)),
            ),
            InnerRectangleWidget(
              width: 309,
              height: 40,
              color: Color(0xFFFCF2E7),
              text: '15.02.2024',
            ),
            SizedBox(height: 35),
            Container(
              width: 309,
              height: 38,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xFF212529),
                ),
                child: Text(
                  'Teklif Ver',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void _showBottomSheet2(BuildContext context) {
  bool _isChecked = false; // State variable to track checkbox

  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    backgroundColor: Colors.white,
    isDismissible: true,
    enableDrag: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            height: 800,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'ID 1258946 Fiyat Önerisi',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF3F3E45)),
                  ),
                  Text(
                    'Şimdi Satın Al 2001₺',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFFDB5442)),
                  ),
                  SizedBox(height: 17),
                  Image.asset('assets/horizontalline.png', width: 350, height: 0),
                  Text(
                    'Daha az komisyon ve sigorta ücreti:',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF3F3E45)),
                  ),
                  Text(
                    '(Easyport komisyonu 3,31 ₺ ERGO Sigortası 2,20₺)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Color(0xFF3F3E45)),
                  ),
                  SizedBox(height: 25),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: LongRectangleWidget(
                            width: 309,
                            height: 201,
                            color: Color(0xFFFCF2E7),
                            text: 'It is a long established fact that a reader will \nbe distracted by the readable content of a \npage when looking at its layout. The point of\n'
                                'using Lorem Ipsum is that it has a more-or- \nless normal distribution of letters, as opposed \nto using "Content here, content here", making it \nlook like readable English. Many desktop \n'
                                'publishing packages and web page editors \nnow ',
                          ),
                        ),
                        SizedBox(height: 35),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: EllipseCheckboxWithText(
                            onChanged: (bool value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 309,
                            height: 38,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: Color(0xFF212529),
                              ),
                              child: Text(
                                'Kabul Et',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

class EllipseCheckboxWithText extends StatefulWidget {
  final ValueChanged<bool> onChanged;

  EllipseCheckboxWithText({required this.onChanged});

  @override
  _EllipseCheckboxWithTextState createState() => _EllipseCheckboxWithTextState();
}

class _EllipseCheckboxWithTextState extends State<EllipseCheckboxWithText> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
              widget.onChanged(_isChecked); // Notify the parent about the change
            });
          },
          child: CustomPaint(
            painter: EllipseCheckboxPainter(isChecked: _isChecked),
            child: SizedBox(
              width: 20,
              height: 20,
            ),
          ),
        ),
        SizedBox(width: 8), // Space between checkbox and text
        Text(
          'By continuing you accept our Privacy Policy',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xFF3F3E45)),
        ),
      ],
    );
  }
}

class EllipseCheckboxPainter extends CustomPainter {
  final bool isChecked;

  EllipseCheckboxPainter({required this.isChecked});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFE5E9EF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(size.height / 2));

    canvas.drawRRect(rrect, paint);

    if (isChecked) {
      final innerPaint = Paint()
        ..color = Colors.red
        ..style = PaintingStyle.fill;

      final innerRect = Rect.fromLTWH(
        size.width * 0.25,
        size.height * 0.25,
        size.width * 0.5,
        size.height * 0.5,
      );
      final innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(size.height / 4));

      canvas.drawRRect(innerRRect, innerPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class LongRectangleWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;

  LongRectangleWidget({
    required this.width,
    required this.height,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(12.0), // Metin etrafında boşluk ekler
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xFF3F3E45),
          ),
          softWrap: true, // Metin sarma özelliğini etkinleştirir
          overflow: TextOverflow.visible, // Taşan metni görünür yapar
        ),
      ),
    );
  }
}

class InnerRectangleWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;

  InnerRectangleWidget({
    required this.width,
    required this.height,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3F3E45),
          ),
        ),

      ),
    );
  }
}
class ImageTextRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 32,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffF2CA6A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/whiteokay.png',
            width: 50,
            height: 50,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Lütfen dikkat! El yazısıyla kayıt (Protokölü)',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}