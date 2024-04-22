// Navigation- Push,Pop

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),

      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(

            style: Buttonstyles.elevatedButton,
          ),

          textButtonTheme: TextButtonThemeData(
            style: Buttonstyles.textButton,

          ),

          // inputDecorationTheme: InputDecorationTheme(
          //     enabledBorder: OutlineInputBorder(),
          //     focusedBorder:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          //     errorBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.red))),

          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xFF143679),
              centerTitle: true,
              elevation: 3,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 42)
          )



      ),


    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(


        title: Text('Home'),
      ),
      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Settings();
              }));


            }, child: Text('Go to Settings')),


            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Profile();
              }));


            }, child: Text('Go to Profile')),
          ],
        ),
      ),
    );
  }
}


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(


        title: Text('Profile'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context)=>Home()),(route)=>false);

            }, child: Text('Back to Home')),

            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Settings())
              );
            }, child: Text('Go to Settings')),
          ],
        ),
      ),

    );
  }
}


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,

      appBar: AppBar(


        title: Text('Settings'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back to previous')),

            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context)=>Home()), (route) => false);

            }, child: Text('Go to Home')),
          ],
        ),
      ),

    );
  }
}


class Buttonstyles{

  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF143679),
    foregroundColor:Colors.white,
    textStyle: TextStyle(
      fontSize: 24,
    ),

  );

  static ButtonStyle textButton = TextButton.styleFrom(
    textStyle: TextStyle(
      fontSize: 24,
    ),
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  );

}






