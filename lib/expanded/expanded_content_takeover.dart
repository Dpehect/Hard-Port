import 'package:flutter/material.dart';

const double commonRectangleWidth = 329.0;

class ExpandedContentTakeOverPage extends StatefulWidget {
  @override
  _ExpandedContentTakeOverPageState createState() => _ExpandedContentTakeOverPageState();
}

class _ExpandedContentTakeOverPageState extends State<ExpandedContentTakeOverPage> {
  bool _isCheckedYes = false;
  bool _isCheckedNo = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: commonRectangleWidth,
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
                      'Devralma Saati ve Tarihi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    DateTimePickerWidget(),
                    SizedBox(height: 10),
                    Text(
                      'Sayaç Değeri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomListItems(
                      text: 'km',
                      items: ['km', 'm', 'cm'],
                      itemHeight: 30,
                    ),
                    SizedBox(height: 30),
                    SliderWidget(),
                    SizedBox(height: 30),
                    Text(
                      'Araç Kuru Mu?',
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
                    Text(
                      'Karlı Mı ?',
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

class DateTimePickerWidget extends StatefulWidget {
  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  String get formattedDate {
    if (selectedDate == null) {
      return 'Select Date';
    } else {
      return '${selectedDate!.year}/${selectedDate!.month}/${selectedDate!.day}';
    }
  }

  String get formattedTime {
    if (selectedTime == null) {
      return 'Select Time';
    } else {
      final hours = selectedTime!.hour.toString().padLeft(2, '0');
      final minutes = selectedTime!.minute.toString().padLeft(2, '0');
      return '$hours:$minutes';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 309,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffDEE2E6)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '${formattedDate} ${formattedTime}',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedDate = null;
                selectedTime = null;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/closerounded.png', width: 16, height: 16),
            ),
          ),
          GestureDetector(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );

              if (pickedDate != null) {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedTime != null) {
                  setState(() {
                    selectedDate = pickedDate;
                    selectedTime = pickedTime;
                  });
                }
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/timerblack.png', width: 16, height: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 0.0;

  Color _getColor(double value) {
    int red = (255 * value).toInt();
    int green = 255 - red;
    return Color.fromARGB(255, red, green, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 320,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: _getColor(_sliderValue),
                inactiveTrackColor: Colors.grey,
                trackHeight: 10.0,
                thumbColor: _getColor(_sliderValue),
                overlayColor: _getColor(_sliderValue).withAlpha(32),
                valueIndicatorTextStyle: TextStyle(color: Colors.white),
                showValueIndicator: ShowValueIndicator.always,
              ),
              child: Column(
                children: [
                  Slider(
                    value: _sliderValue,
                    min: 0.0,
                    max: 1.0,
                    divisions: 100,
                    onChanged: (newValue) {
                      setState(() {
                        _sliderValue = newValue;
                      });
                    },
                    onChangeEnd: (newValue) {
                      setState(() {
                        _sliderValue = (newValue * 100).round() / 100.0;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('%0'),
                      Text('${(_sliderValue * 100).toStringAsFixed(0)}%'),
                      Text('%100'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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

class CustomListItems extends StatefulWidget {
  final String text;
  final List<String> items;
  final double itemHeight;

  CustomListItems({required this.text, required this.items, required this.itemHeight});

  @override
  _CustomListItemsState createState() => _CustomListItemsState();
}

class _CustomListItemsState extends State<CustomListItems> {
  TextEditingController _controller = TextEditingController();
  String _selectedItem = 'km';

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color(0xFFE9ECEF);
    Color textColor = Color(0xFF212529);

    return Container(
      width: 309,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffDEE2E6),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Sayı girin',
                ),
                style: TextStyle(color: textColor),
              ),
            ),
          ),
          Container(
            width: 60,
            child: DropdownButton<String>(
              isExpanded: true,
              value: _selectedItem,
              items: widget.items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
            ),
          ),
        ],
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