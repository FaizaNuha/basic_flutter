import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}


class Myapp extends StatelessWidget{
    const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(primaryColor: Colors.blueAccent), {{Cant use if the material app is const}}
       color: Colors.indigo,
         home: Myhome(),
     );
  }

}

class Myhome extends StatelessWidget{
  const Myhome({super.key});

  ShowBanner(message,context){
    return ScaffoldMessenger.of(context).showMaterialBanner(
        MaterialBanner(content: Text("na na na na "), actions:[
      ElevatedButton(onPressed: (){}, child: Icon(Icons.access_time_rounded)) //due
    ],
        ));
  }

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(    //Had to be  context in Scaffold i.e return should be start with Scaffold
        SnackBar(content: Text(message),
          duration: Duration(seconds: 5),
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Welcome "),
          titleSpacing: 2,
          centerTitle: true,
          elevation: 0,   // the shadow of the appbar
          leading: Icon(Icons.add),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Row(
              children: [
                Text("what is this"),
                SizedBox(width: 20,),
                Icon(Icons.add_business),
                SizedBox(width: 20,),

                Icon(Icons.add_business_rounded),
                SizedBox(width: 20,),

                Icon(Icons.access_alarms),
                SizedBox(width: 20,),


                Icon(Icons.accessible_forward_outlined),



              ],
            ),
          ),
          backgroundColor: Colors.grey,

          actions: [
            IconButton(onPressed: ()
            {MySnackBar("naaaaananananananan",context);},
                icon:Icon(Icons.access_alarm))
          ],

        ) ,
      floatingActionButton: FloatingActionButton(onPressed: () {MySnackBar("i am so qool", context); },
        child: Icon(Icons.add_business),
        backgroundColor: Colors.black,


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      persistentFooterButtons: [
        ElevatedButton(onPressed: (){}, child: Text("thank u")),
        ElevatedButton(onPressed: (){}, child: Text("noo")),
        ElevatedButton(onPressed: (){}, child: Text("yess")),
        ElevatedButton(onPressed: (){}, child: Icon(Icons.add_business))
      ], // in  the bottom

      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){ShowBanner("fora", context);}, child: Icon(Icons.add))
          ],
        ),
      ),

      );
  }




}