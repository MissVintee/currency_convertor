import 'package:flutter/material.dart';

class CurrencyConverterMaterial extends StatelessWidget{
  const CurrencyConverterMaterial({super.key});

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
            Text ('0',
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
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
              onPressed: () {debugPrint("button pressed");},
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(20),
                  backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 84, 83, 83)),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 15)),
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