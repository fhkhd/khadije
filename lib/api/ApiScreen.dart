import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:hazrat_khadije/model/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' as rootBundle;
import 'package:hazrat_khadije/model/MainProduct.dart';
import 'dart:async';
import 'dart:core';
import 'package:hazrat_khadije/MainWebview.dart';

import '../BottomNavigationBar.dart';
import '../model/File.dart';
import '../model/meta.dart';


class ApiScreen extends StatefulWidget {
  const ApiScreen({Key key}) : super(key: key);

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  String url = 'https://khadije.com/fa/api/v6/posts';
  List data;

  Future<String> makeRequest() async{
    var response = await http.get(Uri.parse(url));
    setState(() {
      var extradata = json.decode(utf8.decode(response.bodyBytes));
      data = extradata["result"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1 / 2,
        ),
        itemCount: data == null? 0 : data.length,
        itemBuilder: (BuildContext context, i){
          return GridTile(
            child: Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: new NetworkImage(data[i]["file"]["main"]),
                    ),

                    Text(data[i]["title"],style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(15)
                  )
              ),
              elevation: 0,
            )
          );
        },
      ),
    );
  }
}
