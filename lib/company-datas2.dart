import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyportmobill/driver-data.dart';
import 'package:easyportmobill/complete-document.dart';

class CompanyDatasPage2 extends StatelessWidget {
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
              _buildDocumentContainer(),
              SizedBox(height: 19),
              _buildRichText(),
              buildBottomText('Vergi Numarası', Color(0xFF404B52), EdgeInsets.only(top:28), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "654 654654 654654",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              buildBottomText('Doldurulması zorunludur*', Color(0xFFDB5442), EdgeInsets.only(top:11), 15),
              buildBottomText('Şirket Adı', Color(0xFF404B52), EdgeInsets.only(top:33,bottom: 15), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "Lorem lorem",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              buildBottomText('Yönetici', Color(0xFF404B52), EdgeInsets.only(top:20,bottom: 15), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "Lorem lorem",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              buildBottomText('Adres Bilgileri', Color(0xFF404B52), EdgeInsets.only(top:20,bottom: 15), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "Lorem lorem",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              buildBottomText('Posta Kodu', Color(0xFF404B52), EdgeInsets.only(top:20,bottom: 15), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "0000012",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              buildBottomText('Konum', Color(0xFF404B52), EdgeInsets.only(top:20,bottom: 15), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "0000012",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              buildBottomText('Ülke', Color(0xFF404B52), EdgeInsets.only(top:20,bottom: 15), 15),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "Türkiye",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 18),
                textPadding: EdgeInsets.only(left: 29),
              ),
              SizedBox(height: 20),
              _buildSwitchRectangle(
                text: 'Ayrı fatura adresi.',
                textColor: Colors.black,
                rectangleColor: Color(0xFFF8FAFC),
                activeColor: Colors.green,
                isSwitchedNotifier: _isSwitchedNotifier,
              ),
              SizedBox(height: 119),
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
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        children: [
          TextSpan(
            text: 'DİKKAT:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: 'Lütfen vergi dairesinden aldığınız, ticari \n'),
          TextSpan(text: 'vergi numaranızı veya KDV numaranızı gösteren \n'),
          TextSpan(text: 'güncel bir mektubu (12 aydan eski olmayan) \n'),
          TextSpan(text: 'yükleyin. Ayrıca güncel adresinizin de üzerinde \n'),
          TextSpan(text: 'gösterilmesi gerekmektedir. \n'),
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
        'Vergi Numarası Teyidi',
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



