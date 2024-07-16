import 'package:flutter/material.dart';
import 'package:easyportmobill/sign-up.dart';

void main() {
  runApp(SignInPage());
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg-1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  'assets/logo-text.png',
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 302),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Image.asset('assets/mail-icon.png', width: 20, height: 20),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Color(0x8AFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 15),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Image.asset('assets/password-icon.png', width: 20, height: 20),
                          ),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Color(0x8AFFFFFF),
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 15),
                      ),
                      SizedBox(height: 19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Şifreni mi unuttun?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 77),
                      Container(
                        width: 362,
                        height: 64,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'Giriş Yap',
                            style: TextStyle(fontSize: 15, color: Color(0xFF212529)),
                          ),
                        ),
                      ),
                      SizedBox(height: 19),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          'Yeni bir hesap oluştur.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
