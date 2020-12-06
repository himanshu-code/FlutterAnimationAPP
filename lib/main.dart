import 'package:flutter/material.dart';
import './myanim.dart';

void main() {
  var url1="https://cdn.pixabay.com/photo/2015/03/26/09/40/business-suit-690048_960_720.jpg";
  
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          leading: Image.network(url1),
        ),
        body: MyA1(),
      ),
      debugShowCheckedModeBanner: false,
    ),
    
  );
}
