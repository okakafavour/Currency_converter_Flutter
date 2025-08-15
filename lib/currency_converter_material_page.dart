import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});


  @override 
  Widget build(BuildContext context){

    double result = 0;
    final TextEditingController textEditingController = TextEditingController();


    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          'Currency Converter', 
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
           result.toString(),
            style: const TextStyle(
                fontSize: 55,
               fontWeight: FontWeight.bold,
               color: Color.fromARGB(225, 225, 225, 225),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'please enter the amount in USD',
                hintStyle: const TextStyle(
                  color: Colors.black
                ),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
          
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ), 
          //button
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
               result = double.parse(textEditingController.text) * 81;
            }, 
            style:  TextButton.styleFrom(
               backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const  Text('Convert')),
          ),
        ],
       ),
      ),
    );
  }
} 