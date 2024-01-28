import 'dart:io';

import 'package:flutter/cupertino.dart' ;
import 'package:flutter/material.dart';

class PlatformFlatButton extends StatelessWidget {
  final Function handler;
  final Widget buttonChild;
  final Color color;
  final ButtonStyle buttonPrimary= ElevatedButton.styleFrom(

    maximumSize:Size(327, 50),
    primary:Colors.cyan,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),
        )
    ),



  );

  PlatformFlatButton({@required this.buttonChild,@required this.color,@required this.handler});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: this.buttonChild,
            color: this.color,
            onPressed: this.handler,
            borderRadius: BorderRadius.circular(15.0),
          )

   

    /////////////////////// 


     :SingleChildScrollView(
       child:MaterialButton(
         color: Color.fromRGBO(7, 190, 200, 1),
         height: 60.0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),
    ),
    

    child:this.buttonChild,
    onPressed: this.handler,

    ),
     );


   
  }
}


