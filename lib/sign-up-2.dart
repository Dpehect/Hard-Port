import 'package:easyportmobill/verify-mail-1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp2Page(),
    );
  }
}

class SignUp2Page extends StatefulWidget {
  @override
  _SignUp2PageState createState() => _SignUp2PageState();
}

class _SignUp2PageState extends State<SignUp2Page> {
  bool _isListExpanded = false;
  bool _isSwitched1 = false;
  bool _isSwitched2 = false;

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
        title: LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth * 0.4;
            double height = width * (30 / 153);
            return Center(
              child: Image.asset(
                'assets/logo-text-black.png',
                width: width,
                height: height,
                fit: BoxFit.contain,
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.grey[700]),
                decoration: InputDecoration(
                  hintText: 'Ülke',
                  filled: true,
                  fillColor: Color(0xFFA2A2A2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      setState(() {
                        _isListExpanded = !_isListExpanded;
                      });
                    },
                  ),
                ),
              ),
            ),
            Visibility(
              visible: _isListExpanded,
              child: Container(
                height: 150.0, // Adjust height as necessary
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('Item 1'),
                    ),
                    ListTile(
                      title: Text('Item 2'),
                    ),
                    ListTile(
                      title: Text('Item 3'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 329.0,
                height: 64.0,
                child: TextFormField(
                  style: TextStyle(color: Colors.grey[700]),
                  decoration: InputDecoration(
                    hintText: 'Adı',
                    filled: true,
                    fillColor: Color(0xFFA2A2A2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 329.0,
                height: 64.0,
                child: TextFormField(
                  style: TextStyle(color: Colors.grey[700]),
                  decoration: InputDecoration(
                    hintText: 'Soyadı',
                    filled: true,
                    fillColor: Color(0xFFA2A2A2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 329.0,
                height: 64.0,
                child: TextFormField(
                  style: TextStyle(color: Colors.grey[700]),
                  decoration: InputDecoration(
                    hintText: 'E-posta adresi',
                    filled: true,
                    fillColor: Color(0xFFA2A2A2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 329.0,
                height: 64.0,
                child: TextFormField(
                  style: TextStyle(color: Colors.grey[700]),
                  decoration: InputDecoration(
                    hintText: 'Şifre',
                    filled: true,
                    fillColor: Color(0xFFA2A2A2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 329.0,
                height: 64.0,
                child: TextFormField(
                  style: TextStyle(color: Colors.grey[700]),
                  decoration: InputDecoration(
                    hintText: '+90 848 888 88 99',
                    filled: true,
                    fillColor: Color(0xFFA2A2A2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Switch(
                    value: _isSwitched1,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched1 = value;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'İşbu belge ile ',
                      style: TextStyle(color: Colors.grey[700], fontSize: 13.0),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'hüküm ve koşulları ',
                          style: TextStyle(color: Color(0xFFFF2424), fontSize: 13.0),
                        ),
                        TextSpan(
                          text: 'okuduğumu ve \nkabul ettiğimi onaylıyorum',
                          style: TextStyle(color: Colors.grey[700], fontSize: 14.0),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Switch(
                    value: _isSwitched2,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched2 = value;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'İşbu belge ile gizlilik politikasını okuduğumu ve kabul\nettiğimi onaylıyorum.',
                      style: TextStyle(color: Colors.grey[700], fontSize: 13.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 180,
              height: 64,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyMail1Page()),
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
}
