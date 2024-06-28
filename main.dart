import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
      primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    
     return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar( 
        centerTitle: true,
        backgroundColor: Colors.white, 
      title: const Text("Тапшырма 1",style:TextStyle(color:Colors.black),),
      elevation: 0,),
      body:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
          
            width:double.infinity,
            height:50,
            child:Center(child: Text("Сан :$index",style:TextStyle(fontSize: 20))),
            decoration: BoxDecoration(  color: Colors.grey,borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(height: 20,),
            Row(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor:Colors.blue),
                onPressed: (){
                  setState(() {
                    index--;
                    
                  });
                }, child: Icon(Icons.remove,color:Colors.white)),
              SizedBox(width: 10,),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                
                onPressed: (){
                  setState(() {
                     index++;
                  });
                 
                }, child: Icon(Icons.add,color:Colors.white))
            ],
          ),
          ],
      ),
      ),
      ),
     );
}
}
