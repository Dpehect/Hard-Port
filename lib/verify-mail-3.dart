import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easyportmobill/verify-mail-2.dart';
import 'package:easyportmobill/verify-mail-4.dart';


class VerifyMail3Page extends StatefulWidget {
  @override
  _VerifyMail3PageState createState() => _VerifyMail3PageState();
}

class _VerifyMail3PageState extends State<VerifyMail3Page> {
  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < _controllers.length; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.isNotEmpty && i < _controllers.length - 1) {
          _focusNodes[i].unfocus();
          FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
        }
        if (_controllers.every((controller) => controller.text.isNotEmpty)) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerifyMail2Page()),
          );
        }
      });
    }
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    _focusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Şifre Güncelleme",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 76),
            Text(
              'Phone verification',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'We sent a code to your number ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '9(173)605-76-05',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyMail2Page()),
                    );
                  },
                  child: Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF707070),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 64,
                    height: 64,
                    child: TextField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      onChanged: (value) {
                        if (value.isNotEmpty && index < _controllers.length - 1) {
                          _focusNodes[index].unfocus();
                          FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                        }
                        if (_controllers.every((controller) => controller.text.isNotEmpty)) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VerifyMail4Page()),
                          );
                        }
                      },
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Don't receive your code? ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyMail2Page()),
                    );
                  },
                  child: Text(
                    'Resend',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF707070),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

