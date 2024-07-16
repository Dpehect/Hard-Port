import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyportmobill/company-datas2.dart';


class CompanyDatasPage1 extends StatelessWidget {
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
          'Şirket verileri',
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
              SizedBox(height: 16),
              _buildDocumentContainer(),
              SizedBox(height: 14),
              buildBottomText('İlgili yorum ticaret lisansının özel özellikleri',Color(0xFF404B52),
                  EdgeInsets.only(top:14),15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 120.0,
                text: "Yorum...………………………..",
                alignment: Alignment.topCenter,
                textAlign: TextAlign.center,
                left: 20,
                top: 15,
              ),
              SizedBox(height: 22),
              buildBottomText('Şirketin yasal şekli',Color(0xFF404B52),EdgeInsets.only(top:22),15),
              SizedBox(height: 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "Easyport AŞ.",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                left: 20,
                top: 15,
              ),
              SizedBox(height: 11),
              buildBottomText('Doldurulması zorunludur*',Color(0xFFDB5442),EdgeInsets.only(top:11),13),
              SizedBox(height: 22),
              buildBottomText('Lütfen güncel bir mektup indirin ticari vergi\nnumaranızın veya KDV numaranızın görülebileceği\n'
                  'vergi dairesinden. Ayrıca mevcut adresinizin\nüzerinde gösterilmesi gerekmektedir.',Color(0xFF404B52),
                  EdgeInsets.only(top:11),13),
              SizedBox(height: 27),
              Container(
                width: 362,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompanyDatasPage2()),
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
              SizedBox(height: 27),
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
          TextSpan(text: 'Lütfen ticari sicil sertifikanızın tamamını\n'),
          TextSpan(text: 'buraya yükleyin. Her iki durumda da, tüm\n'),
          TextSpan(text: 'sayfaların ve bilgilerin tamamen tanınabilir\n'),
          TextSpan(text: 'olması önemlidir.'),
          TextSpan(
            text: 'İki belgeden biri olmadan\nişbirliği mümkün değildir!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentContainer() {
    return Container(
      width: double.infinity,
      color: Color(0xFFD0D3D9),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDocumentTitle(),
          SizedBox(height: 10),
          _buildDocumentImages(),
          SizedBox(height: 22),
          _buildNoteText(),
        ],
      ),
    );
  }

  Widget _buildDocumentTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        'Ticaret ruhsatı',
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFF404B52),
          ),
        ),
      ),
    );
  }

  Widget _buildDocumentImages() {
    return Row(
      children: [
        _buildDocumentImage('assets/datascompanycamera.png'),
        SizedBox(width: 10),
        _buildDocumentImage('assets/datascompanycamera.png'),
        SizedBox(width: 10),
        _buildDocumentImage('assets/datascompanyplus.png'),
      ],
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

  Widget _buildNoteText() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        'Doldurulması zorunludur*',
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Color(0xFFDB5442),
          ),
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


class _Rectangle extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Alignment alignment;
  final TextAlign textAlign;
  final double top;
  final double left;
  final double right;
  final double bottom;

  _Rectangle({
    required this.width,
    required this.height,
    required this.text,
    this.alignment = Alignment.topCenter, // Default alignment
    this.textAlign = TextAlign.center, // Default text alignment
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
      padding: EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
      child: Align(
        alignment: alignment,
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
    );
  }
}
