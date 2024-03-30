

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

  List<String> studentList=[
    'Mridul',
    'Alex',
    'Bob',
    'Charlie'
  ];

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

      //Only column will be overflow so that we can use singleChildScrollView.


      // body:SingleChildScrollView(
      //
      //   child: Column(
      //     children: [
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is mjmk'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //       Text('My name is Midu'),
      //
      //     ],
      //
      //   ),
      //
      // ),


      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is mjmk'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //           Text('My name is Midu'),
      //
      //   ],
      // ),


      /*body: ListView.builder(

        itemCount:studentList.length,
        itemBuilder: (context,index){
          return Padding(
            padding:const EdgeInsets.all(5),
            child: Column(
              children: [
                Text(studentList[index],style: TextStyle(fontSize:24),),
                Divider(color: Colors.black,)
              ],
            ),

          );
        },
      ),*/


      // body: ListView.separated(
      //   itemCount: studentList.length,
      //   itemBuilder: (context, index) {
      //     return Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(studentList[index],
      //           style: TextStyle(
      //               fontSize: 18
      //           ),),
      //
      //       ],
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return Divider(
      //       height: 32,
      //       thickness: 2,
      //       endIndent: 16,
      //       indent: 8,
      //       color: Colors.pink,
      //     );
      //   },
      // ),

      /* body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Text('1'),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),
          Text('6'),
          Text('7'),
          Text('8'),
          Text('9'),
        ],
      ),*/

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,

              itemCount:studentList.length,
              itemBuilder: (context,index){
                return Padding(
                  padding:const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(studentList[index],style: TextStyle(fontSize:24),),
                      Divider(color: Colors.black,)
                    ],
                  ),

                );
              },
            ),

            GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 100,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text('Roll - ${index+1}'),
                    // Text(studentList[index])
                  ],
                );
              },),


          ],
        ),

      ),


    );


  }


}