import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyportmobill/carrier2.dart';
class CarrierPage extends StatefulWidget {
  @override
  _CarrierPageState createState() => _CarrierPageState();
}

class _CarrierPageState extends State<CarrierPage> {
  int? selectedOption;

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
        title: Text(
          'Römork / Taşıyıcı',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 122),
              buildRectangleWithChecker('Bir minibüsüm veya römorkum var ve\naraçları yabancı eksene\naktarabiliyorum.', 1),
              SizedBox(height: 16),
              buildRectangleWithChecker('Bir minibüsüm veya römorkum yok.', 2),
              SizedBox(height: 81),
              Container(
                width: 362,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarrierPage2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xFFD5D8DD),
                  ),
                  child: Text(
                    'Gönder',
                    style: TextStyle(fontSize: 15, color: Color(0xFF212529)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRectangleWithChecker(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedOption == index ? Colors.green : Colors.grey[300],
              ),
              child: selectedOption == index
                  ? Icon(Icons.check, color: Colors.white, size: 16)
                  : null,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 15, color: Color(0xFF212529)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
