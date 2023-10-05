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

  MyAlertDialog(context){
    return showDialog(context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title:Text("Alert !"),
            content: Text("do you really want to delete "),
            actions: [
              TextButton(onPressed: (){

                MySnackBar("deleted", context);
                Navigator.of(context).pop();
                },
                child: Text("Yes"),),
          TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No"))


          ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("wondering why"),
        ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [

             Padding(padding: EdgeInsets.all(20),
               child:
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'FIRST NAME ',
                     border: OutlineInputBorder()
                   ),
                 ),

             ),
             Padding(padding: EdgeInsets.all(20),
               child:
               TextField(
                 decoration: InputDecoration(
                     labelText: 'LAST NAME ',
                     border: OutlineInputBorder()
                 ),
               ),

             ),
             Padding(padding: EdgeInsets.all(20),
               child:
               TextField(
                 decoration: InputDecoration(
                     labelText: 'EMAIL ',
                     border: OutlineInputBorder()
                 ),
               ),

             ),


             Padding(
               padding:  EdgeInsets.all(20),
               child: ElevatedButton(onPressed: (){MyAlertDialog(context);},
                   child: Text("click me"),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.lightGreenAccent,
                   maximumSize: Size(double.infinity, 60)
                 ),
               ),
             )
           ],
         ),
       )
     );
  }

 }