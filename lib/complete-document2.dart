import 'package:easyportmobill/complete-document3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easyportmobill/complete-document3.dart';

void main() {
  runApp(CompleteDocumentPage2());
}

class CompleteDocumentPage2 extends StatefulWidget {
  @override
  _CompleteDocumentPage2State createState() => _CompleteDocumentPage2State();
}

class _CompleteDocumentPage2State extends State<CompleteDocumentPage2> {
  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < _controllers.length; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.isNotEmpty && i < _controllers.length - 1) {
          _focusNodes[i].unfocus();
          FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
        }
        if (_controllers.every((controller) => controller.text.isNotEmpty)) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CompleteDocumentPage3()),
          );
        }
      });
    }
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    _focusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                'Lütfen Gelen Kutunuzu Kontrol Edin \nVe E-Posta Onayla Bağlantısına \nTıklayın',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF212529),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'E-postanızdaki bağlantı çalışmıyorsa\naktivasyon kodunu buraya manuel olarak\ngirebilirsiniz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xFF212529),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) {
                    return SizedBox(
                      width: 64,
                      height: 64,
                      child: TextField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        onChanged: (value) {
                          if (value.isNotEmpty && index < _controllers.length - 1) {
                            _focusNodes[index].unfocus();
                            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                          }
                        },
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 362,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    if (_controllers.every((controller) => controller.text.isNotEmpty)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CompleteDocumentPage3()),
                      );
                    } else {
                      // Show a message or handle the case where not all fields are filled
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'Kodu Gönder',
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
}


