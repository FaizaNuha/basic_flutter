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
  final  Myitems =[
    {'img':'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80','title':'sunnor'},
    {'img':'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80','title':'sunnor'},
    {'img':'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80','title':'sunnor'},
    {'img':'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80','title':'sunnor'},
];

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

       body: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           crossAxisSpacing: 2
         ),
          itemCount: Myitems.length,
           itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                MySnackBar(Myitems[index]['title '], context);
              },
               child: Container(
                 margin: EdgeInsets.all(10),
                 width: double.infinity,
                 height: 270,
                 child: Column(
                   children: [
                     Image.network(Myitems[index]['img']!, fit: BoxFit.fill,),
                     SizedBox(
                       height: 20,
                     ),
                     Text(Myitems[index]['title']!),
                   ],
                 ),
               ),
            );
           }
       ),
     );

  }

 }