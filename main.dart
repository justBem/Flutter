// Импорт бул бардык флаттерге тиешелуу виджеттерди озуно камтыйт.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sabak_2/secondPage.dart';

// void: Эч нерсе кайтарбай турган функция
// main: Негизги функция
void main() { 
  //runApp: Сиздин тиркемениздин баштоо функциясы ал ичине виджет алат
  //MyApp(): класс же виджеттин аталышы
  runApp(const MyApp());
}
// class MyApp : класс
// extends : мурас алуу
class MyApp extends StatelessWidget {
  // класстын конструктору
  const MyApp({super.key});

  // @override :
  @override
  // build: куруу озуно виджет алат
  // BuildContext : адрес, виджеттерди козомолдоочу вектор
  Widget build(BuildContext context) {
    // return : кайтаруу 
    // MaterialApp :  материалдык дизайны бар жаны флаттер колдонмосун тузот
    return MaterialApp(
      title: 'Flutter Demo',
    // theme: бул тема MaterialAppка тиешелуу касиет
      theme: ThemeData(
        
      primarySwatch: Colors.grey,
      ),
      // home: MaterialApp касиети
      // MuhomePage: виджет же класс
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
                 
                }, child: Icon(Icons.add,color:Colors.white)),
                
            ],
          ),
          SizedBox(
            height: 10,
          ),
          IconButton(onPressed:(){
            Navigator.push(context, 
            MaterialPageRoute(builder:(context) =>EkinchiBet( count: index,)));
          }, icon: Icon(Icons.next_plan,
           size: 50,
           color: Colors.green,))
          ],
      ),
      ),
      ),
     );
}
}
