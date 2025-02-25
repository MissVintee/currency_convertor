import 'package:currency_convertor/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'currency_converter_material.dart';

void main(){
  runApp(MyCupertinoApp());
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

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Currency Converter App'),
          backgroundColor: Color.fromARGB(255, 165, 222, 251),
        ),
        child: CurrencyConverterCupertinoPage(),
      ),
    );
  }
}