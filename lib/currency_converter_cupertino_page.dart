import'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = (double.parse(textEditingController.text) * 86.86);
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold( 
      backgroundColor: Color.fromARGB(255, 124, 204, 244),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text (
              'INR ${ result!=0 ? result.toStringAsFixed(3): result.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CupertinoTextField(
                controller: textEditingController,
                
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 226, 226),
                  border: Border.all(color: CupertinoColors.black),
                  borderRadius: BorderRadius.circular(30),
                ),

                placeholder: 'Amount in USD',
                placeholderStyle: TextStyle(color: CupertinoColors.black),
                prefix: Icon(CupertinoIcons.money_dollar),

                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            CupertinoButton(
              onPressed: () {convert();},
              color: const Color.fromARGB(255, 127, 188, 223),
              child: Text('Convert'),
              
            ),
          ],
        ),
      ),
    );
  }
}