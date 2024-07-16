import 'package:flutter/material.dart';
import 'allTrips1.dart';
import 'offers1.dart';
import 'latesttrips.dart';
import 'finishedOrders.dart';
import 'filter.dart';

class MissionsPage extends StatefulWidget {
  @override
  _MissionsPageState createState() => _MissionsPageState();
}

class _MissionsPageState extends State<MissionsPage> {
  final List<String> texts = ["Tüm Geziler", "Teklif Verilenler", "Güncel Geziler", "Bitmiş Siparişler"];
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildPageContent() {
    switch (_selectedIndex) {
      case 0:
        return AllTrips1Page();
      case 1:
        return Offers1Page();
      case 2:
        return LatestTripsPage();
      case 3:
        return FinishedOrdersPage();
      default:
        return Center(
          child: Text(
            'Select a page from above',
            style: TextStyle(fontSize: 24),
          ),
        );
    }
  }

  void _onIconTap() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 130.0), // Adjust this value to move the pop-up higher
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: PopupContent(),
            ),
          ),
        );
      },
      barrierDismissible: true, // Close the dialog by tapping outside of it
      barrierColor: Colors.black.withOpacity(0.5), // Dimmed background
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('Görev Listem'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: _onIconTap,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    'assets/filter.png', // Replace with your asset path
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(texts.length, (index) {
                return GestureDetector(
                  onTap: () => _onItemTap(index),
                  child: Container(
                    width: 127,
                    height: 28,
                    decoration: BoxDecoration(
                      color: _selectedIndex == index ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        texts[index],
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: _selectedIndex == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Expanded(
            child: _buildPageContent(),
          ),
        ],
      ),
    );
  }
}