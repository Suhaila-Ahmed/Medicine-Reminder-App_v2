import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:medicine/screens/home/home.dart';
import 'package:medicine/screens/welcome/Welcome2.dart';
import 'package:medicine/screens/welcome/categories.dart';
import 'package:medicine/screens/welcome/welcome.dart';


class StartScreen extends StatelessWidget
{



  final ButtonStyle buttonPrimary= ElevatedButton.styleFrom(

    maximumSize:Size(350, 50),
    primary:Color.fromRGBO(7, 190, 200, 1),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),
        )
    ),



  );



  final ButtonStyle button_Primary= ElevatedButton.styleFrom(
    side: const BorderSide(
      width: 2, // the thickness
      color: Colors.blue, // the color of the border
    ),

    maximumSize:Size(350, 50),
    primary:Colors.white,

    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),

        )
    ),



  );


  @override
  Widget build(BuildContext context)
  { final double deviceHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

  return Scaffold(
      appBar: AppBar(

        // عشان اعمل شادو تحت appbar
        elevation: 10.5,
        backgroundColor:Color.fromRGBO(7, 190, 200, 1),
      ),

      body:SafeArea(

        child:Padding(
          padding: const EdgeInsets.all(20.0),
          //عشان ميحصلش ايررور ف الابعاد الطول
          child: Center(

            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                 
                  Container(
                    child: Center(child: Text("welcom to the application ",

                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color.fromRGBO(7, 190, 200, 1),
                          //Colors.cyan,

                        ),),
                    ),
                  ),

                   Image.asset(

                
                      'assets/images/medicinee.jpg',


                    width: double.infinity,
                      height: deviceHeight* 0.4
                  ),
                  SizedBox(
                    height:70.0,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child:ElevatedButton(style: buttonPrimary
                      ,onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=>Welcome2(),
                          ),
                        );
                      }, child: const Text("Get  Start",
                        style: TextStyle(
                          fontSize: 20,
                        ),),

                    ),
                  ),


                  SizedBox(
                    height: 20.0,
                  ),

                  SizedBox(
                    height: 10.0,
                  ),




                ],
              ),


            ),
          ),
        ),
      ),


    );
  }
}
