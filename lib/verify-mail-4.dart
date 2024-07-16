import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easyportmobill/complete-document.dart';




void main() {
  runApp(VerifyMail4Page());
}

class VerifyMail4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerifyMail4PageContent(),
    );
  }
}

class VerifyMail4PageContent extends StatefulWidget {
  @override
  _VerifyMail4PageContentState createState() => _VerifyMail4PageContentState();
}

class _VerifyMail4PageContentState extends State<VerifyMail4PageContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(context);
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      backgroundColor: Colors.white,
      isDismissible: false,
      enableDrag: false,
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/tik-green.png',
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'TEBRİKLER',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF62CF6D),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Kayıt Işleminiz Başarılı Bir Şekilde\nOluşturulmuştur...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 309,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompleteDocumentPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: Color(0xFF212529),
                  ),
                  child: Text(
                    'Devam Et',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5D8DD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 345,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        'assets/bg-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/logo-text.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Text(
              'E-postanızın onaylanmasını \nbekliyoruz...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Lütfen E-Postanıza Gelen\nKodu Giriniz',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27.0,
                color: Color(0xFF212529),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

