import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   WebViewController _conttroller;
  bool isLoading=true;
  final _key = UniqueKey();

  get myModel => null;
  @override
  Widget build(BuildContext context) {
    return
      RefreshIndicator(
          onRefresh: () => _conttroller.reload(),
          child:
      Stack(
        children: <Widget>[
      WebView(
        initialUrl: 'https://khadije.com/fa',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller){
          this._conttroller = controller;
        },
        onPageFinished: (finish) {
          setState(() {
            isLoading = false;
          });
        },
      ),
        isLoading ? Center( child: CircularProgressIndicator(),)
            : Stack(),
     ]
      )
      );
  }
}


