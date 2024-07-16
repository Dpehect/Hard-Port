import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyportmobill/driver-data2.dart';


class DriverDataPage extends StatelessWidget {
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
          'Sürücü Verileri',
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
              CustomRichText(
                textSpans: [
                  TextSpan(text: 'Lütfen yukarıdaki sürücü belgenizi tarayın ve \n'),
                  TextSpan(text: 'otomatik olarak girilen verileri kontrol edin.  \n'),
                  TextSpan(text: 'İpucu: Çek kartı biçiminde olmayan \n'),
                  TextSpan(text: 'ehliyetler taranamaz. Lütfen verileri manuel \n'),
                  TextSpan(text: 'olarak giriniz. \n'),
                ],
                textColor: Color(0xFF404B52),
                padding: EdgeInsets.all(16.0),
              ),

              SizedBox(height: 44),
              DocumentSection(
                text: 'Profil resmi',
                imagePaths: [
                  'assets/datascompanycamera.png',
                  'assets/datascompanyplus.png',
                ],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              buildBottomText('Doğum Tarihi', Color(0xFF404B52), EdgeInsets.only(top:14), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "02.01.1990",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              //
              buildBottomText('Ehliyet Sınıfları', Color(0xFF404B52), EdgeInsets.only(top:14), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "A-B-C-D-E-F-G-H",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              //
              buildBottomText('Ehliyet Tarihi', Color(0xFF404B52), EdgeInsets.only(top:14), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "02.02.2001",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              //
              buildBottomText('Ehliyet Numarası', Color(0xFF404B52), EdgeInsets.only(top:14), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "65465 AS 45",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 15),
              DocumentSection(
                text: 'Ehliyet Ön Tarafı Çek',
                imagePaths: [
                  'assets/datascompanycamera.png',
                  'assets/datascompanyplus.png',
                ],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              SizedBox(height: 15),
              DocumentSection(
                text: 'Ehliyet Arka Tarafı Çek',
                imagePaths: [
                  'assets/datascompanycamera.png',
                  'assets/datascompanyplus.png',
                ],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              buildBottomText('Ehliyet Puan Belgesini Yükle', Color(0xFF404B52), EdgeInsets.only(top:34), 15),
              _buildTextField('Pdf.. JPG….', 'assets/plusbuttonwhite.png'),
              CustomRichText(
                textSpans: [
                  TextSpan(text: 'Son 3 ay içerisinde alınmış Ehliyet durum belgesi \n'),
                  TextSpan(text: 'yüklenmelidir. Fotoğraf ya da Belge niteliğinde... \n'),
                ],
                textColor: Color(0xFFDB5442),
                padding: EdgeInsets.all(16.0),
              ),

              SizedBox(height: 70),
              Container(
                width: 362,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DriverData2Page()),
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
              SizedBox(height: 30),
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
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        children: [
          TextSpan(text: 'Lütfenyukarıdaki sürücü belgenizi tarayın ve \n'),
          TextSpan(text: 'otomatik olarak girilen verileri kontrol edin.  \n'),
          TextSpan(text: 'İpucu: Çek kartı biçiminde olmayan \n'),
          TextSpan(text: 'ehliyetler taranamaz. Lütfen verileri manuel \n'),
          TextSpan(text: 'olarak giriniz. \n'),
        ],
      ),

    );
  }



  Widget _buildTextField(String hintText, String iconPath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 64.0,
        decoration: BoxDecoration(
          color: Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            Text(
              hintText,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF404B52),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                iconPath,
                width: 30.0,
                height: 30.0,
              ),
            ),
          ],
        ),
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

class CustomRichText extends StatelessWidget {
  final List<TextSpan> textSpans;
  final TextAlign textAlign;
  final TextStyle textStyle;
  final Color textColor;
  final EdgeInsets padding;

  CustomRichText({
    required this.textSpans,
    this.textAlign = TextAlign.start,
    this.textStyle = const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    this.textColor = Colors.black,
    this.padding = EdgeInsets.zero,

  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: GoogleFonts.poppins(textStyle: textStyle),
        children: textSpans,
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
  final double top;
  final double left;
  final double right;
  final double bottom;

  _Rectangle({
    required this.width,
    required this.height,
    required this.text,
    this.alignment = Alignment.topCenter,
    this.textAlign = TextAlign.center,
    this.padding = EdgeInsets.zero,
    this.textPadding = EdgeInsets.zero,
    this.top = 0.0,
    this.left = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
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
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}



