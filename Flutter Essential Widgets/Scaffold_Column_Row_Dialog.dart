//Scaffold | Column | Row | Dialog

import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home:Home(),
    );
  }

}


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        leading: Icon(Icons.home,size: 32),
        title: Text('Home Screen',textAlign: TextAlign.center,

            style:TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),


        actions: [
          IconButton(onPressed: (){
            /*
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Button is successfully Working!',
                    style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black)),
              backgroundColor: Colors.amber.shade300,)
            );

            */ //Here we can show a SnackBar widget for this add iconButton.

            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text('Send Money'),
                content: Text('Are You Want to send Money?'),
              );

            });



          }, icon: Icon(Icons.add)),
        ],

      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hellow',style:TextStyle(fontSize: 32)),
            Text('World'),
            Text('From'),
            Text('Mridul'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children:[
                Text('Greetings '),
                Text('From '),
                Text('Mridul'),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date: '),
                    Text('22.03.2024'),
                  ],
                )

              ],
            ),

          ],
        ),

      ),


    );


  }



}