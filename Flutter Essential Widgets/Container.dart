

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
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.black, width: 2),
                // border: Border(
                //   top: BorderSide(color: Colors.black, width: 3),
                //   bottom: BorderSide(color: Colors.black, width: 2),
                //   left: BorderSide(color: Colors.black, width: 2),
                //   right: BorderSide(color: Colors.black, width: 2),
                // ),
                // image: DecorationImage(
                //     image: AssetImage('images/panda.jpg'),
                //     fit: BoxFit.cover
                // ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 5,
                    blurRadius: 8,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                  // BoxShadow(
                  //   color: Colors.pink.withOpacity(0.9),
                  //   spreadRadius: 5,
                  //   blurRadius: 8,
                  //   offset: Offset(0, 3), // changes position of shadow
                  // ),
                ]
            ),
            alignment: Alignment.center,
            child: Text('Panda', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
          ),
        )




    );


  }


}