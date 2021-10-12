import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'api/ApiClass.dart';
import 'HomePage.dart';
import 'delneveshte.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hazrat_khadije/api/ApiScreen.dart';

class HazratKhadije extends StatefulWidget {
  const HazratKhadije({Key key}) : super(key: key);

  @override
  _HazratKhadijeState createState() => _HazratKhadijeState();
}

class _HazratKhadijeState extends State<HazratKhadije> {
   WebViewController conttroller;
  int _pageIndex=0;
  @override
  Widget build(BuildContext context) {

    final List<Widget> _tabList =[
      HomeScreen(),
      Delneveshte(),
      // ApiClass(),
      ApiScreen(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: _tabList.elementAt(_pageIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: HexColor('5e80c4'),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: HexColor('011350'),
          currentIndex: _pageIndex,
          onTap: (int index) {
            setState(() {
              _pageIndex = index;
          });
          },
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "صفحه اصلی"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "دل نوشته",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "جستجو"
          ),
          ],
      ),
    );
  }
}

// Stack(
// children: [
// Padding(
// padding: const EdgeInsets.all(30.0),
// child: Align(
// alignment: Alignment(0.0,1.0),
// child: ClipRRect(
// borderRadius: BorderRadius.all(
// Radius.circular(30.0),
// ),
// child: BottomNavigationBar(
// selectedItemColor: HexColor('5e80c4'),
// unselectedItemColor: Colors.grey,
// showSelectedLabels: true,
// showUnselectedLabels: false,
// backgroundColor: HexColor('011350'),
// currentIndex: _pageIndex,
// onTap: (int index) {
// setState(() {
// _pageIndex = index;
// });
// },
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.home_filled),
// label: "صفحه اصلی"
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.favorite),
// label: "دل نوشته",
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.search),
// label: "جستجو"
// ),
// ],
// ),
// ),
// ),)
// ],
// )