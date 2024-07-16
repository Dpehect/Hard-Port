import 'package:flutter/material.dart';
import 'package:easyportmobill/sign-in.dart';
import 'package:easyportmobill/sign-up-2.dart';
void main() {
  runApp(SignUpPage());
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD5D8DD),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
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
            SizedBox(height: 67.0),
            Text(
              'Sürücü olup\nkeyifli yolculuğun tadını çıkarın,\nAynı zamanda para kazanın.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
                color: Color(0xFF76797D),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Tek İhtiyacınız olan\nticari bir sürücü belgesi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27.0,
                color: Color(0xFF212529),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 362,
              height: 64,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp2Page()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Şimdi Kayıt Ol!',
                  style: TextStyle(fontSize: 15, color: Color(0xFF212529)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Zaten üye misiniz?',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}