
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home:Home(),
    );
  }

}


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(



        /* child: Text('Hello world,We are starting a new Project!!',
            textAlign: TextAlign.center,
            maxLines: 2,
            style:TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.deepPurple,
            color: Colors.white,
            overflow: TextOverflow.ellipsis,

        )),*/

        //child: Icon(Icons.android,size: 100, color: Colors.green,),
        child: Image.network('https://c7.alamy.com/comp/2DC6FEA/kung-fu-panda-life-size-statues-2DC6FEA.jpg',
          width: 400,height: 200, fit: BoxFit.scaleDown,
        ),

        //child: Image.asset('src',width: 400,height: 200, fit: BoxFit.scaleDown,),

      ),

    );

  }



}