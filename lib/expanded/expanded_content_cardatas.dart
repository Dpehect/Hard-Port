import 'package:flutter/material.dart';

const double commonRectangleWidth = 329.0; // Define a common width value

class ExpandedContentCarDatasPage extends StatefulWidget {
  @override
  _ExpandedContentCarDatasPageState createState() => _ExpandedContentCarDatasPageState();
}

class _ExpandedContentCarDatasPageState extends State<ExpandedContentCarDatasPage> {
  bool _isCheckedYes = false;
  bool _isCheckedNo = false;
  String _selectedSeason = '';

  void _onSeasonTap(String season) {
    setState(() {
      _selectedSeason = season;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: commonRectangleWidth, // Apply the common width value
        height: 800,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            SizedBox(height: 16), // Add some spacing at the top
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Şasi Numarası',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    InnerRectangleWidget(
                      width: 309,
                      height: 60,
                      color: Colors.white,
                      text: 'ZXLŞCKZXL5435435',
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Plaka',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ListItems(
                      text: 'TR',
                      items: ['Item 1', 'Item 2', 'Item 3'],
                      itemHeight: 50, // Set the desired height for each item
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Resmi Plaka',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InnerRectangleWidget(
                      width: 309,
                      height: 60,
                      color: Colors.white,
                      text: '06 BM 9353',
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Üretici Firma',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ListItems(
                      text: 'Ford',
                      items: ['Item 1', 'Item 2', 'Item 3'],
                      itemHeight: 50, // Set the desired height for each item
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Model',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ListItems(
                      text: 'Fiesta',
                      items: ['Item 1', 'Item 2', 'Item 3'],
                      itemHeight: 50, // Set the desired height for each item
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Kazalı araç',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isCheckedYes = !_isCheckedYes;
                              if (_isCheckedYes) {
                                _isCheckedNo = false;
                              }
                            });
                          },
                          child: CustomPaint(
                            painter: EllipseCheckboxPainter(isChecked: _isCheckedYes),
                            child: SizedBox(
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 13),
                        Text(
                          'Evet',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 100),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isCheckedNo = !_isCheckedNo;
                              if (_isCheckedNo) {
                                _isCheckedYes = false;
                              }
                            });
                          },
                          child: CustomPaint(
                            painter: EllipseCheckboxPainter(isChecked: _isCheckedNo),
                            child: SizedBox(
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 13),
                        Text(
                          'Hayır',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    ImageTextRectangle(
                      imagePath1: 'assets/datascompanycamera.png',
                      imagePath2: 'assets/datascompanycamera.png',
                      imagePath3: 'assets/datascompanyplus.png',
                      imageWidth: 87,
                      imageHeight: 120,
                      innerRectangleWidth: 283,
                      innerRectangleHeight: 28,
                      innerRectangleColor: Colors.white,
                      innerRectangleText: 'Açıklama Yazınız...',
                      isHintText: true,
                    ),
                    SizedBox(height: 37),
                    Text(
                      'Lastikler',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SeasonWidget(
                          season: 'Yaz',
                          assetPath: 'assets/summer.png',
                          isSelected: _selectedSeason == 'Yaz',
                          onTap: () => _onSeasonTap('Yaz'),
                        ),
                        SizedBox(width: 32),
                        SeasonWidget(
                          season: 'Kış',
                          assetPath: 'assets/winter.png',
                          isSelected: _selectedSeason == 'Kış',
                          onTap: () => _onSeasonTap('Kış'),
                        ),
                        SizedBox(width: 32),
                        SeasonWidget(
                          season: 'Dört Mevsim',
                          assetPath: 'assets/fourseasons.png',
                          isSelected: _selectedSeason == 'Dört Mevsim',
                          onTap: () => _onSeasonTap('Dört Mevsim'),
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SeasonWidget extends StatelessWidget {
  final String season;
  final String assetPath;
  final bool isSelected;
  final Function onTap;

  SeasonWidget({
    required this.season,
    required this.assetPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        color: isSelected ? Colors.orange : Colors.transparent,
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Image.asset(
              assetPath,
              width: 22,
              height: 20,
            ),
            SizedBox(width: 5),
            Text(
              season,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
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
  final bool isHintText;

  InnerRectangleWidget({
    required this.width,
    required this.height,
    required this.color,
    required this.text,
    this.isHintText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffDEE2E6),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft, // Align the text to the start (left)
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding to the left
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isHintText ? FontWeight.normal : FontWeight.bold,
              color: isHintText ? Colors.grey : Color(0xFF3F3E45),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageTextRectangle extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final double imageWidth;
  final double imageHeight;
  final double innerRectangleWidth;
  final double innerRectangleHeight;
  final Color innerRectangleColor;
  final String innerRectangleText;
  final bool isHintText;

  ImageTextRectangle({
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
    required this.imageWidth,
    required this.imageHeight,
    required this.innerRectangleWidth,
    required this.innerRectangleHeight,
    required this.innerRectangleColor,
    required this.innerRectangleText,
    this.isHintText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 186,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFE5E9EF)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath1,
                width: imageWidth,
                height: imageHeight,
              ),
              SizedBox(width: 7),
              Image.asset(
                imagePath2,
                width: imageWidth,
                height: imageHeight,
              ),
              SizedBox(width: 7),
              Image.asset(
                imagePath3,
                width: imageWidth,
                height: imageHeight,
              ),
            ],
          ),
          SizedBox(height: 16),
          InnerRectangleWidget(
            width: innerRectangleWidth,
            height: innerRectangleHeight,
            color: innerRectangleColor,
            text: innerRectangleText,
            isHintText: isHintText,
          ),
        ],
      ),
    );
  }
}



class ListItems extends StatefulWidget {
  final String text;
  final List<String> items;
  final double itemHeight; // Add a parameter for item height

  ListItems({required this.text, required this.items, required this.itemHeight});

  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  bool _isListExpanded = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color(0xFFE9ECEF);
    Color textColor = Color(0xFF212529);

    return GestureDetector(
      onTap: () {
        setState(() {
          _isListExpanded = !_isListExpanded;
        });
      },
      child: Container(
        width: 309,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffDEE2E6), // Specify the border color
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                enabled: false, // Make the text field read-only
                style: TextStyle(color: textColor),
                decoration: InputDecoration(
                  hintText: widget.text,
                  hintStyle: TextStyle(fontSize: 15, color: textColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                  suffixIcon: IconButton(
                    icon: Icon(_isListExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
                    onPressed: () {
                      setState(() {
                        _isListExpanded = !_isListExpanded;
                      });
                    },
                  ),
                ),
              ),
              Visibility(
                visible: _isListExpanded,
                child: Container(
                  height: 150.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: widget.itemHeight, // Set the custom height for each item
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.items[index],
                            style: TextStyle(
                              fontSize: 14,
                              color: textColor,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Color(0xffDEE2E6), // Specify the color of the line separator
                        height: 1,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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