import 'package:flutter/material.dart';

class PopupContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 328,
          height: 485,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  'Filtrele',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                RectangleWithText(text: 'ID numarası', isExpandable: false),
                SizedBox(height: 5),
                RectangleWithText(text: 'Tüm Geziler', isExpandable: true),
                SizedBox(height: 5),
                RectangleWithText(text: '20.01.2024-30.03.2024', isExpandable: true),
                SizedBox(height: 5),
                RectangleWithText(text: 'Plaka giriniz', isExpandable: false),
                SizedBox(height: 95),
                Container(
                  width: 309,
                  height: 38,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the popup
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
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Image.asset('assets/closerounded.png'), // Replace with your asset path
            iconSize: 24.0,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}

class RectangleWithText extends StatefulWidget {
  final String text;
  final bool isExpandable;

  RectangleWithText({required this.text, this.isExpandable = false});

  @override
  _RectangleWithTextState createState() => _RectangleWithTextState();
}

class _RectangleWithTextState extends State<RectangleWithText> {
  bool _isListExpanded = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color(0xFFE9ECEF);
    Color textColor = widget.isExpandable ? Color(0xFF212529) : Color(0xFF9FA0A0);

    return Container(
      width: 270,
      height: 56,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              style: TextStyle(color: textColor),
              decoration: InputDecoration(
                hintText: widget.text,
                hintStyle: TextStyle(fontSize: 12, color: textColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                suffixIcon: widget.isExpandable
                    ? IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {
                    setState(() {
                      _isListExpanded = !_isListExpanded;
                    });
                  },
                )
                    : null,
              ),
            ),
            widget.isExpandable
                ? Visibility(
              visible: _isListExpanded,
              child: Container(
                height: 150.0,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('Item 1'),
                    ),
                    ListTile(
                      title: Text('Item 2'),
                    ),
                    ListTile(
                      title: Text('Item 3'),
                    ),
                  ],
                ),
              ),
            )
                : Container(),

          ],
        ),
      ),
    );
  }
}