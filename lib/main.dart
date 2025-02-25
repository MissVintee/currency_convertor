import 'package:flutter/material.dart';
import 'currency_converter_material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Currency Converter App'),
          backgroundColor: Colors.blue,
        ),
        body: CurrencyConverterMaterialPage(),
      ),
    );
  }
}