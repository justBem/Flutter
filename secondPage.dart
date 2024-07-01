

import 'package:flutter/material.dart';
class EkinchiBet extends StatelessWidget {
  const EkinchiBet({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    const center = Center(child: Text("Тапшырма 2"));
    return  Scaffold(
      appBar: AppBar(
        title: center,
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Card(color: Colors.grey,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color:Theme.of(context).colorScheme.outline,
          ),
          borderRadius: BorderRadius.circular(10),

         ),
         child: SizedBox (
         width: 300,
         height: 100,
         child: Center(child: Text ("Cан: $count", 
         style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
  ) ,
         )
      ],),
    );
  }
}