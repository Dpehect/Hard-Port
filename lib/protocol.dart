import 'package:flutter/material.dart';
import 'expanded/expanded_content_cardatas.dart';
import 'expanded/expanded_content_orderdatas.dart';
import 'expanded/expanded_content_takeover.dart';




class TakeOverProtocolPage extends StatefulWidget {
  @override
  _TakeOverProtocolPageState createState() => _TakeOverProtocolPageState();
}

class _TakeOverProtocolPageState extends State<TakeOverProtocolPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Devir Alma Protokolü'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text('Übernahme - Protokoll',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(height: 8.0),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '
                    'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                softWrap: true,
              ),
              SizedBox(height: 25.0),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RectangleWithText(
                      text: '1. Sipariş Verileri',
                      isExpandable: true,
                      expandedContent: ExpandedContentOrderDatasPage(), // Use appropriate content
                    ),
                    SizedBox(height: 14.0),
                    RectangleWithText(
                      text: '2. Araç verileri/Bilgilerii',
                      isExpandable: true,
                      expandedContent: ExpandedContentCarDatasPage(), // Use appropriate content
                    ),
                    SizedBox(height: 14.0),
                    RectangleWithText(
                      text: '3. Devralma',
                      isExpandable: true,
                      expandedContent: ExpandedContentTakeOverPage(), // Use appropriate content
                    ),
                    SizedBox(height: 14.0),
                    RectangleWithText(
                      text: '4. İç Kısımda Hasar',
                      isExpandable: true,
                      expandedContent: ExpandedContentCarDatasPage(), // Use appropriate content
                    ),
                    SizedBox(height: 14.0),
                    RectangleWithText(
                      text: '5. Dışarıdan Hasar/Dış Hasar',
                      isExpandable: true,
                      expandedContent: ExpandedContentCarDatasPage(), // Use appropriate content
                    ),
                    SizedBox(height: 14.0),
                    RectangleWithText(
                      text: '6. İmza',
                      isExpandable: true,
                      expandedContent: ExpandedContentCarDatasPage(), // Use appropriate content
                    ),
                    SizedBox(height: 14.0),
                    EllipseCheckboxWithText(
                      onChanged: (bool value) {
                        setState(() {
                          _isChecked = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 309,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Action for the button
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Color(0xFF212529),
                        ),
                        child: Text(
                          'Kabul Et',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
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
  _EllipseCheckboxWithTextState createState() =>
      _EllipseCheckboxWithTextState();
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
          'By continuing you accept our Privacy Policy By \ncontinuing you accept our Privacy Policy',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF3F3E45)),
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

class RectangleWithText extends StatefulWidget {
  final String text;
  final bool isExpandable;
  final Widget expandedContent; // Add expanded content widget parameter

  RectangleWithText({
    required this.text,
    this.isExpandable = false,
    required this.expandedContent,
  });

  @override
  _RectangleWithTextState createState() => _RectangleWithTextState();
}

class _RectangleWithTextState extends State<RectangleWithText> {
  bool _isListExpanded = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _isListExpanded ? Color(0xffDEE2E6) : Colors.white;
    Color textColor = _isListExpanded ? Color(0xff404B52) : Color(0xFF212529);

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isListExpanded = !_isListExpanded;
            });
          },
          child: Container(
            width: 329,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
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
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Center(
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ),
                if (widget.isExpandable)
                  IconButton(
                    icon: Icon(
                      _isListExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {
                      setState(() {
                        _isListExpanded = !_isListExpanded;
                      });
                    },
                  ),
              ],
            ),
          ),
        ),
        if (_isListExpanded && widget.isExpandable)
          widget.expandedContent, // Show the expanded content here
      ],
    );
  }
}