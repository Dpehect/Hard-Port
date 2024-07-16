import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyportmobill/driver-data.dart';
import 'package:easyportmobill/insurance.dart';
import 'package:easyportmobill/carrier.dart';
import 'package:easyportmobill/company-datas1.dart';
import 'package:easyportmobill/complete-document2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompleteDocumentPage(),
    );
  }
}

class CompleteDocumentPage extends StatefulWidget {
  @override
  _CompleteDocumentPageState createState() => _CompleteDocumentPageState();
}

class _CompleteDocumentPageState extends State<CompleteDocumentPage> {
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
          'Belgelerinizi Tamamlayın',
          textAlign: TextAlign.center,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField('1. Şirket Verileri', 'assets/tik-green.png', CompanyDatasPage1()),
            _buildTextField('2. Sürücü Verileri', 'assets/tik-green.png', DriverDataPage()),
            _buildTextField('3. Sigorta', 'assets/tik-green.png', InsurancePage()),
            _buildTextField('4. Römork / Taşıyıcı', 'assets/tik-green.png', CarrierPage()),
            SizedBox(height: 250),
            SizedBox(
              width: 329,
              height: 64,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompleteDocumentPage2()),
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
    );
  }

  Widget _buildTextField(String hintText, String iconPath, Widget page) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Container(
          height: 64.0,
          decoration: BoxDecoration(
            color: Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hintText,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF404B52),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(width: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  iconPath,
                  width: 24.0,
                  height: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
