import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

import 'api/ApiScreen.dart';

class WebViewMain extends StatefulWidget {
  const WebViewMain({Key key}) : super(key: key);

  @override
  _WebViewMainState createState() => _WebViewMainState();
}

class _WebViewMainState extends State<WebViewMain> {
  WebViewController conttroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        gestureRecognizers: Set()
      ..add(Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer())),
    gestureNavigationEnabled: true,
    initialUrl: 'https://khadije.com/fa',
    onWebViewCreated: (controller){
    this.conttroller = controller;
    },
    ),
      bottomNavigationBar: BottomAppBar(
        color: HexColor('011350'),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 60,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 60,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ApiScreen()));
                  },
                  child: Icon(Icons.search_outlined,color: HexColor('5e80c4'),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 60,
                child: InkWell(
                    onTap: () async {
                      final url = await conttroller.currentUrl();
                      print('Previous Website: $url');
                      conttroller.loadUrl('https://khadije.com/delneveshte');
                    },
                    child: Icon(Icons.favorite,color: HexColor('5e80c4'),)
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 60,
                  child: InkWell(
                    onTap: ()  {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebViewMain()));
                    },
                    child: Icon(Icons.home_outlined,
                      color: HexColor('5e80c4'),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
