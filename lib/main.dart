import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}


class Myapp extends StatelessWidget{
    const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(primaryColor: Colors.blueAccent), {{Cant use if the material app is const}}
       color: Colors.indigo,
         home: Mytohome(),
     );
  }

}

class Mytohome extends StatelessWidget{


  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),
        duration: Duration(seconds: 3) ,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("wondering why"),
        ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [

             ElevatedButton(onPressed: (){
               MySnackBar("elevatred button", context);
             }, child: Text("I "),
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.grey,
                 shadowColor: Colors.cyanAccent,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)
                 )
               ),
             ),

             
             TextButton(onPressed: (){MySnackBar("Text button", context);},
                 child: Text("me"),
               style: TextButton.styleFrom(
                 backgroundColor: Colors.lightGreenAccent,
                 shape:CircleBorder(),
                 padding: EdgeInsets.all(5),
                 foregroundColor: Colors.purple,
                 )
               ),

             OutlinedButton(onPressed: (){
               MySnackBar("Outlined button", context);
             }, child: Text("myself"),
               style: OutlinedButton.styleFrom(
                 backgroundColor: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.elliptical(10, 20))
                 )
               ),
             ),
             
             IconButton(onPressed: (){
               MySnackBar("Icon button", context);
             },
               icon: Icon(Icons.handshake_outlined),
               style: IconButton.styleFrom(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20))
                 )
               ),
             ),

           ],
         ),
       ) ,
     );
  }

 }