import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orientation/config.dart';

class orientationdemo extends StatefulWidget {
  const orientationdemo({Key? key}) : super(key: key);

  @override
  State<orientationdemo> createState() => _orientationdemoState();
}

class _orientationdemoState extends State<orientationdemo> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }


  @override
  Widget build(BuildContext context) {
    Config(context);
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              color: Colors.teal,
              height: Config.bodyhieght*0.5,
              width: Config.totalwidth*0.5,
            ),
            Container(
              color: Colors.grey,
              height: Config.bodyhieght*0.5,
              width: Config.totalwidth*0.5,
            ),
          ],
        ),
      );
     /*if(orientation==Orientation.portrait)
       {
         return Scaffold(
           appBar: AppBar(),
           body: Column(
             children: [
               Container(
                 color: Colors.teal,
                 height: 200,
                 width: 200,
               )
             ],
           ),
         );
       }
     else
       {
         return Scaffold(
           appBar: AppBar(),
           body: Column(
             children: [
               Container(
                 color: Colors.yellow,
                 height: 200,
                 width: 200,
               )
             ],
           ),
         );
       }*/
    },);

  }
}
