import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyportmobill/complete-document.dart';

class DriverData2Page extends StatefulWidget {
  @override
  _DriverData2PageState createState() => _DriverData2PageState();
}

class _DriverData2PageState extends State<DriverData2Page> {
  bool _isDropdownOpen = false;
  List<String> _licenseClasses = ["Class A", "Class B", "Class C"];

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
              buildBottomText('Doğum Tarihi', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              SizedBox(height: 10),
              _Rectangle(
                width: double.infinity,
                height: 61.0,
                text: "02.01.1990",
                alignment: Alignment.topLeft,
                textAlign: TextAlign.left,
                padding: EdgeInsets.symmetric(vertical: 10),
                textPadding: EdgeInsets.only(left: 29, top: 10),
              ),
              buildBottomText('Ehliyet Sınıfları', Color(0xFF404B52), EdgeInsets.only(top: 14), 15),
              _buildLicenseDropdown(
                text: "B",
                backgroundColor: Color(0xFFDEE2E6),
              ),
              SizedBox(height: 70),
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

  Widget _buildLicenseDropdown({
    required String text,
    required Color backgroundColor,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isDropdownOpen = !_isDropdownOpen;
            });
          },
          child: _Rectangle(
            width: double.infinity,
            height: 61.0,
            text: text,
            alignment: Alignment.centerLeft,
            textAlign: TextAlign.left,
            padding: EdgeInsets.symmetric(vertical: 10),
            textPadding: EdgeInsets.only(left: 50, top: 10),
            backgroundColor: backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Color(0xFF404B52),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Color(0xFF404B52)),
              ],
            ),
          ),
        ),
        if (_isDropdownOpen)
          ..._licenseClasses.asMap().entries.map((entry) {
            int idx = entry.key;
            String value = entry.value;
            Color itemBackgroundColor = idx % 2 == 0 ? Colors.white : Color(0xFFE0E0E0);
            return Container(
              width: double.infinity,
              color: itemBackgroundColor,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 29),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  value,
                  style: TextStyle(
                    color: Color(0xFF404B52),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }).toList(),
      ],
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
    return Padding(
      padding: padding,
      child: RichText(
        textAlign: textAlign,
        text: TextSpan(
          style: GoogleFonts.poppins(textStyle: textStyle),
          children: textSpans,
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
  final Widget? child;
  final Color backgroundColor;

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
    this.child,
    this.backgroundColor = const Color(0xFFDEE2E6),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: backgroundColor,
      ),
      padding: padding,
      child: Align(
        alignment: alignment,
        child: child ??
            Padding(
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
