import 'package:flutter/material.dart';
import 'expanded/expanded_content_widget_latesttrips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modular Structure',
      home: AllTrips1Page(),
    );
  }
}

class AllTrips1Page extends StatefulWidget {
  @override
  _AllTrips1PageState createState() => _AllTrips1PageState();
}

class _AllTrips1PageState extends State<AllTrips1Page> {
  int _expandedIndex = -1;

  void _toggleExpand(int index) {
    setState(() {
      _expandedIndex = _expandedIndex == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: RectangleWidget(
                topText: 'ID 1258946',
                middleText: 'İstanbul',
                bottomText: 'Adana',
                imageUrl: 'assets/sidebysideArrows.png',
                endTopText: '20.03.2024',
                endBottomText: '29.03.2024',
                isExpanded: _expandedIndex == 0,
                onTap: () => _toggleExpand(0),
                expandedContent: ExpandedContentWidget(
                  extraInfo1: 'ID 1258946',
                  extraInfo2: 'LT8839202YFR',
                  imageUrl: 'assets/truckAllTrips.png',
                  imageUrl1: 'assets/downloadAllTrips.png',
                  imageUrl2: 'assets/infoAllTrips.png',
                  imageUrl3: 'assets/closeAllTrips.png',
                  rectangleText: 'Geziye ait belgeler \n mevcuttur',
                  rectangleImageUrl: 'assets/pdfAllTrips.png',
                  rectangleInnerTextTitle1: 'UNIT ID',
                  rectangleInnerText1: '#583002',
                  rectangleInnerTextTitle2: 'Fiyat',
                  rectangleInnerText2: '254₺',
                  rectangleInnerTextTitle3: 'Plaka',
                  rectangleInnerText3: '35 AOL 654',
                  additionalImageUrl: 'assets/underArrows.png',
                    additionalImageUrlWithText:'assets/phoneAllTrips.png',
                    additionalText1: 'Mercedes Benz Mengerler İstanbul',
                  addressText1: 'Sinanpaşa Mah. Süleyman Seba Cad.',
                  addressText2: 'No:14 Daire: 5 Sıraevler, Beşiktaş/İSTANBUL',
                  addressText3: '4872 Boeneke RD Clinton LA 48257',
                  additionalText2: 'FAYSAL ULUDAĞ',
                  clockImageUrl: 'assets/clockImage.png',
                  clockText1: 'Alış zamanı',
                  clockText2: '20.00 - 21.00',
                  clockText3: '20.03.2024',
                  clockText4: 'Varış zamanı',
                  clockText5: '20.00 - 21.00',
                  clockText6: '20.03.2024',
                  underImageUrl1: 'assets/carAllTrips.png',
                  clockText7: 'Mesafe',
                  clockText8: '348 km Elekro',
                  clockText9: 'PKW',
                  underImageUrl2: 'assets/user.png',
                  clockText10: 'Mercedes',
                  clockText11: '20.00 - 21.00',
                  clockText12: 'Mengerler A.Ş',
                  userText: 'İşveren',
                 ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: RectangleWidget(
                topText: 'ID 1258947',
                middleText: 'Ankara',
                bottomText: 'İzmir',
                imageUrl: 'assets/sidebysideArrows.png',
                endTopText: '21.03.2024',
                endBottomText: '30.03.2024',
                isExpanded: _expandedIndex == 1,
                onTap: () => _toggleExpand(1),
                expandedContent: ExpandedContentWidget(
                  extraInfo1: 'ID 1258946',
                  extraInfo2: 'LT8839202YFR',
                  imageUrl: 'assets/truckAllTrips.png',
                  imageUrl1: 'assets/downloadAllTrips.png',
                  imageUrl2: 'assets/infoAllTrips.png',
                  imageUrl3: 'assets/closeAllTrips.png',
                  rectangleText: 'Geziye ait belgeler \n mevcuttur',
                  rectangleImageUrl: 'assets/pdfAllTrips.png',
                  rectangleInnerTextTitle1: 'UNIT ID',
                  rectangleInnerText1: '#583002',
                  rectangleInnerTextTitle2: 'Fiyat',
                  rectangleInnerText2: '254₺',
                  rectangleInnerTextTitle3: 'Plaka',
                  rectangleInnerText3: '35 AOL 654',
                  additionalImageUrl: 'assets/underArrows.png',
                    additionalImageUrlWithText:'assets/phoneAllTrips.png',
                    additionalText1: 'Mercedes Benz Mengerler İstanbul',
                    addressText1: 'Sinanpaşa Mah. Süleyman Seba Cad.',
                  addressText2: 'No:14 Daire: 5 Sıraevler, Beşiktaş/İSTANBUL',
                  addressText3: '4872 Boeneke RD Clinton LA 48257',
                  additionalText2: 'FAYSAL ULUDAĞ',
                  clockImageUrl: 'assets/clockImage.png',
                  clockText1: 'Alış zamanı',
                  clockText2: '20.00 - 21.00',
                  clockText3: '20.03.2024',
                  clockText4: 'Varış zamanı',
                  clockText5: '20.00 - 21.00',
                  clockText6: '20.03.2024',
                  underImageUrl1: 'assets/carAllTrips.png',
                  clockText7: 'Mesafe',
                  clockText8: '20.00 - 21.00',
                  clockText9: '20.03.2024',
                  underImageUrl2: 'assets/user.png',
                  clockText10: 'Mercedes',
                  clockText11: '20.00 - 21.00',
                  clockText12: 'Mengerler A.Ş',
                  userText: 'İşveren',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RectangleWidget extends StatelessWidget {
  final String topText;
  final String middleText;
  final String bottomText;
  final String imageUrl;
  final String endTopText;
  final String endBottomText;
  final bool isExpanded;
  final VoidCallback onTap;
  final Widget expandedContent;

  RectangleWidget({
    required this.topText,
    required this.middleText,
    required this.bottomText,
    required this.imageUrl,
    required this.endTopText,
    required this.endBottomText,
    required this.isExpanded,
    required this.onTap,
    required this.expandedContent,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle topTextStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.bold);
    final TextStyle middleTextStyle = TextStyle(fontSize: 9, fontWeight: FontWeight.normal);
    final TextStyle bottomTextStyle = TextStyle(fontSize: 9, fontWeight: FontWeight.normal);
    final TextStyle endTopTextStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF707070));
    final TextStyle endBottomTextStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0XFF383838));

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 329,
        height: isExpanded ? 535 : 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: isExpanded
            ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            expandedContent,
            SizedBox(height: 8),
          ],
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 8),
                Text(topText, style: topTextStyle),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(endTopText, style: endTopTextStyle),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              children: [
                SizedBox(width: 8),
                Text(middleText, style: middleTextStyle),
                SizedBox(width: 8.0),
                Image.asset(imageUrl, width: 36, height: 37),
                SizedBox(width: 8.0),
                Text(bottomText, style: bottomTextStyle),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(endBottomText, style: endBottomTextStyle),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

