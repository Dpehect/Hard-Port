import 'package:flutter/material.dart';
import 'package:easyportmobill/verify-mail-3.dart';



class VerifyMail2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Yeni Şifre Oluştur",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 76),
            Text(
              'E-postanızı girin ve gelen',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'kodu giriniz',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 62),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Image.asset('assets/mail-icon-black.png', width: 20, height: 20),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xFF9FA0A0)),
                filled: true,
                fillColor: Color(0x8AFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none
                ),
              ),
              style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 15),
            ),
            SizedBox(height: 62),
            Container(
              width: 362,
              height: 64,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyMail3Page()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Color(0xFF212529),
                ),
                child: Text(
                  'Kodu Gönder',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
