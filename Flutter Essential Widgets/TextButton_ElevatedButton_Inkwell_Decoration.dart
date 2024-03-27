

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

      body:Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(width: 2,color: Colors.black),
                ),
                textStyle: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),

              ),

              onPressed: (){

              },child: Text('Press Here'),
            ),


            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(fontSize: 24),

                ),

                onPressed: (){

                }, child: Text('Text Here')),

            IconButton(onPressed: (){

            }, icon: Icon(Icons.add_circle,color: Colors.black54,)),

            GestureDetector(
                onTap: (){
                  print('ONe tap');
                },

                onDoubleTap: (){
                  print('Double Tap');
                },

                onLongPress: (){
                  print('Long press');
                },

                child:Column(
                  children: [
                    Text('Tap Checker'),
                    Icon(Icons.add),
                    Row(
                      children: [
                        Text("This is a Row"),
                      ],
                    )

                  ],

                )

            ),


            InkWell(
                splashColor:Colors.black54,
                onTap: (){
                  print('ONe tap');
                },

                onDoubleTap: (){
                  print('Double Tap');
                },

                onLongPress: (){
                  print('Long press');
                },

                child:Column(
                  children: [
                    Text('Tap Checker'),
                    Icon(Icons.add),
                    Row(
                      children: [
                        Text("This is a Row"),
                      ],
                    )

                  ],

                )

            ),

            Padding(padding: EdgeInsets.all(16),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                    fillColor: Colors.amber,
                    filled: true,
                    prefixIcon: Icon(Icons.add),
                    suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
            ),



          ],
        ),

      ),


    );


  }


}