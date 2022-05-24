import 'dart:convert';
import 'dart:math';
import 'package:hazrat_khadije/model/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' as rootBundle;
import 'package:hazrat_khadije/model/MainProduct.dart';
import 'dart:async';
import 'dart:core';

import '../model/File.dart';
import '../model/meta.dart';




class ApiClass extends StatefulWidget {
   const ApiClass({Key key}) : super(key: key);

   @override
   _ApiClassState createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {
  List<dynamic> data;
  Future <List<Product>> getDataFromFakeServer() async{
    final jsondata = await rootBundle.rootBundle.loadString('jsonfile/khadijeJson.json');
    final map = json.decode(jsondata);
    List<dynamic> data = map["result"];
    print(data[0]["title"]);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromFakeServer();
  }

Widget build(BuildContext context) {
  return Scaffold(
    body: FutureBuilder(
      future: getDataFromFakeServer(),
      builder: (context , data){
        if (data.hasError){
          return Center(child: Text("${data.error}"),);
        }else
          if (data.hasData){
          var items = data.data as List<Product>;
          return ListView.builder(
            itemCount: items == null? 0: items.length,
            itemBuilder: (context,int index){
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: Image(image: NetworkImage(items[index].file.main),fit: BoxFit.fill,),
                      ),
                      Expanded(child: Container(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Text(items[index].title,style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),),),
                            Padding(padding: EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Text(items[index].excerpt),)
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              );
            },
          );
        }else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
    ),
  );
}}
