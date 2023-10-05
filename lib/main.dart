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
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("it is end drawer")),

              ListTile(
                title: Text("if there's already then no icon added for drawer. "),

              )
            ],

          ),
        ),

       appBar: AppBar(
         title: Text("Drawer, end drawer,"),
       ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         items: [
         BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded),label: "home"),
         BottomNavigationBarItem(icon: Icon(Icons.accessibility_new_rounded),label: "sweet home"),
         BottomNavigationBarItem(icon: Icon(Icons.add),label: "add"),

       ],
         onTap: (int index){
            if(index==0){
              MySnackBar("tik ase sob? ", context);

           }
            if(index==1){
              MySnackBar("yess", context);
            }

            if(index==2){
              MySnackBar("Alhamdullilah", context);
            }

         },
         
       ),
       drawer: Drawer(
         child: ListView(
           children: [
             DrawerHeader(
               padding: EdgeInsets.all(0),
                 child: UserAccountsDrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.orange,
               ),
               accountEmail: Text("abc@gamil.com"),
               accountName: Text("nuah"),
                   currentAccountPicture: ClipOval(
                       child: Image.network("https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80",
                       width: 80,
                       height: 80,
                       fit: BoxFit.cover),

                   ),

             )
             ),

             ListTile(
                 leading: Icon(Icons.home),
               title: Text("contant"),
               onTap: (){MySnackBar("its happing", context);}),
             ListTile(
                 leading: Icon(Icons.phone_in_talk),
                 title: Text("profile"),
                 onTap: (){MySnackBar("its happing", context);}

     ),
             ListTile(
               leading: Icon(Icons.mail_lock_rounded),
               title: Text("email"),
                 onTap: (){MySnackBar("its happing", context);},
     ),
             ListTile(
             leading: Icon(Icons.ads_click_sharp),
               title: Text("phone"),
    onTap: (){MySnackBar("its happing", context);},
    ),
             ListTile(
               leading: Icon(Icons.volunteer_activism_rounded),
               title: Text("yop"),
                 onTap: (){MySnackBar("its happing", context);}),

           ],


         ),
       ),

       body: Container(
         width: 200,
         height: 200,
         alignment: Alignment.center,

         margin: EdgeInsets.all(10),
         padding: EdgeInsets.all(10),
         decoration: BoxDecoration(
           color: Colors.pink,
           border: Border.all(color: Colors.black),

         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Column(
               children: [
                 Text("it's okay not to be okay")
               ],
             )
           ],

         ),
       ),


     );
  }

 }