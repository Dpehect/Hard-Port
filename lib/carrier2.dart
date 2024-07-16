import 'package:flutter/material.dart';
import 'package:easyportmobill/complete-document.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CarrierPage2());
}

class CarrierPage2 extends StatelessWidget {
  final ValueNotifier<bool> _isSwitchedNotifier1 = ValueNotifier(false);
  final ValueNotifier<bool> _isSwitchedNotifier2 = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Römork / Taşıyıcı'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customWidget3(
                text1: 'Lütfen kayıt sertifikasını ve fragmanın bir fotoğrafını buraya yükleyin.',
                text2: 'Kabul',
                imageUrl: 'assets/datascompanycamera.png',
              ),
              SizedBox(height: 15),
              customWidget1(
                text: 'Fotoğraf römorku/taşıyıcı',
                imageUrl: 'assets/datascompanycamera.png',
              ),
              SizedBox(height: 20),
              buildBottomText('Plaka', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "06 BM 9353",
                alignment: Alignment.centerLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 20),
              _buildSwitchRectangle(
                text: '3,5 Tonun üzerinde taşıma için AB lisansı var mı?',
                textColor: Colors.black,
                rectangleColor: Color(0xFFF8FAFC),
                activeColor: Colors.green,
                isSwitchedNotifier: _isSwitchedNotifier1,
              ),
              SizedBox(height: 15),
              buildBottomText('Taşınacak aracın maks ağırlığı', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "21504 kg",
                alignment: Alignment.centerLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 15),
              buildBottomText('Mm cinsinden maksimum uzunluk', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "21504 mm",
                alignment: Alignment.centerLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 15),
              buildBottomText('Mm genişlik', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "21504 mm",
                alignment: Alignment.centerLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 15),
              _buildSwitchRectangle(
                text: '3,5 Tonun üzerinde taşıma için AB lisansı var mı?',
                textColor: Colors.black,
                rectangleColor: Color(0xFFF8FAFC),
                activeColor: Colors.green,
                isSwitchedNotifier: _isSwitchedNotifier2,
              ),
              SizedBox(height: 15),
              buildBottomText('Aynı anda en büyük römorkla kaç araç\n taşınabilir?', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "5",
                alignment: Alignment.centerLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 79),
              Container(
                width: 362,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompleteDocumentPage()),
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
}

class _Rectangle extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Alignment alignment;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final EdgeInsets textPadding;

  _Rectangle({
    required this.width,
    required this.height,
    required this.text,
    this.alignment = Alignment.topCenter,
    this.textAlign = TextAlign.center,
    this.padding = EdgeInsets.zero,
    this.textPadding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFDEE2E6),
      ),
      padding: padding,
      child: Align(
        alignment: alignment,
        child: Padding(
          padding: textPadding,
          child: Text(
            text,
            textAlign: textAlign,
            style: TextStyle(
              color: Color(0xFF404B52),
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildSwitchRectangle({
  required String text,
  required Color textColor,
  required Color rectangleColor,
  required Color activeColor,
  required ValueNotifier<bool> isSwitchedNotifier,
}) {
  return Container(
    width: double.infinity,
    height: 61.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: rectangleColor,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(width: 10),
        ValueListenableBuilder<bool>(
          valueListenable: isSwitchedNotifier,
          builder: (context, isSwitched, child) {
            return Switch(
              value: isSwitched,
              onChanged: (bool newValue) {
                isSwitchedNotifier.value = newValue;
              },
              activeColor: activeColor,
              activeTrackColor: activeColor.withOpacity(0.5),
            );
          },
        ),
      ],
    ),
  );
}

Widget buildBottomText(String text, Color color, EdgeInsets padding, double textSize) {
  return Padding(
    padding: padding,
    child: Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.normal,
          color: color,
        ),
      ),
    ),
  );
}

Widget customWidget3({
  required String text1,
  required String text2,
  required String imageUrl,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        text1,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(height: 34),
      Text(
        text2,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      ),
      SizedBox(height: 20),
      Image.asset(
        imageUrl,
        height: 150,
      ),
    ],
  );
}

Widget customWidget1({
  required String text,
  required String imageUrl,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      ),
      SizedBox(height: 20),
      Image.asset(
        imageUrl,
        height: 150,
      ),
    ],
  );
}