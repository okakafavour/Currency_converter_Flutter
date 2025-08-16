import 'package:flutter/cupertino.dart';


class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => CurrencyConverterCupertinoPageState();
}

class CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {

   double result = 0;
   final TextEditingController textEditingController = TextEditingController(); 

    void convert() {
      result = double.parse(textEditingController.text) * 80;
      setState(() {});
    }
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: const Text('Currency Converter'),
      ),
      child: Center(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
             'Int ${result !=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 55,
                 fontWeight: FontWeight.bold,
                 color: Color.fromARGB(225, 225, 225, 225),
              ),
            ),
            
            CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(5)
              ), 
              placeholder: 'please enter the amount in USD',
              prefix: Icon(CupertinoIcons.money_dollar),
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ), 
            const SizedBox(height: 10),
            CupertinoButton(
              onPressed: convert,
              color: CupertinoColors.black,
              child: const  Text('Convert')
            ),

          ],
         ),
       ),
      ),
    );    
  }
}