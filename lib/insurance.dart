import 'package:easyportmobill/complete-document.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InsurancePage extends StatelessWidget {
  final ValueNotifier<bool> _isSwitchedNotifier = ValueNotifier(false);

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
          'Sigorta',
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
              _buildRichText(),
              SizedBox(height: 21),
              _buildSwitchRectangle(
                text: 'Sigorta koşullarını kabul ediyorum.',
                textColor: Colors.black,
                rectangleColor: Color(0xFFF8FAFC),
                activeColor: Colors.green,
                isSwitchedNotifier: _isSwitchedNotifier,
              ),
              SizedBox(height: 122),
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

  Widget _buildRichText() {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        children: [
          TextSpan(text: "Easyport'te sürücü olarak kabul ettiğiniz her  \n"),
          TextSpan(text: "yolculuk, ERGO'nun ONLOGIST ortak sigortası  \n"),
          TextSpan(text: 'ile sizin için (ve yalnızca sizin için) otomatik  \n'),
          TextSpan(text: 'olarak sigortalanır. Böylece herhangi bir ek \n'),
          TextSpan(text: 'taşıma sorumluluğu sigortasına ihtiyacınız  \n'),
          TextSpan(text: 'yoktur. \n\n'),
          TextSpan(text: 'Kendi sigortanız varsa veya birkaç  \n'),
          TextSpan(text: 'sürücüyle araç kullanmak istiyorsanız, lütfen  \n'),
          TextSpan(text: 'kayıttan sonra ONLOGIST servis ekibiyle \n'),
          TextSpan(text: 'iletişime geçin. \n'),
        ],
      ),
    );
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
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
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
}


class DocumentSection extends StatelessWidget {
  final String text;
  final List<String> imagePaths;
  final EdgeInsets padding;

  DocumentSection({
    required this.text,
    required this.imagePaths,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF404B52),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: imagePaths.map((path) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: _buildDocumentImage(path),
              );
            }).toList(),
          ),
          SizedBox(height: 22),
          Text(
            'Doldurulması zorunludur*',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFFDB5442),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentImage(String imagePath) {
    return Expanded(
      child: Image.asset(
        imagePath,
        width: 87,
        height: 120,
      ),
    );
  }
}
