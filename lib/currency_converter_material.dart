import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    );

    return Scaffold ( 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text (
              'INR ${ result!=0 ? result.toStringAsFixed(3): result.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  hintText: 'Amount in USD',
                  filled: true,
                  fillColor: Colors.white,
                  
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {result = (double.parse(textEditingController.text) * 86.86);});
              },
              style: ElevatedButton.styleFrom(
                elevation: 20,
                backgroundColor: const Color.fromARGB(255, 84, 83, 83),
                foregroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: TextStyle(fontSize: 15),
              ),
              child: Text('Convert'),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 165, 222, 251),
    );
  }
}
