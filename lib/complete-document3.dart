import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easyportmobill/main-2.dart';




void main() {
  runApp(CompleteDocumentPage3());
}

class CompleteDocumentPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompleteDocumentPage3Content(),
    );
  }
}

class CompleteDocumentPage3Content extends StatefulWidget {
  @override
  _CompleteDocumentPage3State createState() => _CompleteDocumentPage3State();
}

class _CompleteDocumentPage3State extends State<CompleteDocumentPage3Content> {
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
          height: 439,
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
                'Üyelik  işleminiz başarılı bir şekilde \nTamamlandı.',
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
                      MaterialPageRoute(builder: (context) => AllTrips1()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: Color(0xFF212529),
                  ),
                  child: Text(
                    'Bitti',
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

