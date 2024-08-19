
import 'package:fitness_app/comman_widget/feature_widget.dart';
import 'package:fitness_app/comman_widget/our_button.dart';
import 'package:fitness_app/consts/colors.dart';
import 'package:fitness_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Widget bgScreen(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    // padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: const BoxDecoration(
      color:Colors.greenAccent
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(

              padding: EdgeInsets.only(left: 30),
              width: 200,
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  'Health Risk Assessment'.text.extraBold.size(20).make(),
                  10.heightBox,
                  Container(
                    width: 110,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical:3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius:BorderRadius.circular(30)
                      ),
                    child: Row(
                      children: [
                        Icon(Icons.timer),
                        3.widthBox,
                        Text("4 Min")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(imgHealth,
                  width: 80, fit: BoxFit.cover),
            ),
          ],
        ),

        // *************end**********************
        Expanded(child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,

              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: "What do you get ?".text.size(18).bold.make(),
                ),
                  20.heightBox,
                  Row(

                    children: [
                    featureWidget(icon: icKeyBody,title: "Key Body Vitals"),
                    featureWidget(icon: icPossture,title: "Posture Analysis"),
                    featureWidget(icon: icBody,title: "Body Composition"),
                    featureWidget(icon:icInstain ,title: "Instant Reports"),
                  ],),
                 // **********How we do it? section*********************
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                            ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: 'How we do it?'.text.size(18).bold.make(),
                                  ),

                                  Container(
                                        width: double.infinity,
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                    ),
                                    // color: Colors.white,
                                    child: Image.asset(imgPushUpBoy),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                    color: lightwhite3,
                                      borderRadius: BorderRadius.circular(8)

                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(icOutline),
                                        5.widthBox,
                                        'We do not store or share your personal data'.text.make()
                                      ],
                                    ),
                                  ),
                                  10.heightBox,
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      
                                      children: [
                                        "1.Ensure that you are in a well-lit space".text.make(),
                                        "2.Allow camera access and place your device ".text.make(),
                                      ],
                                    ),
                                  )
                                ],

                              )
                        )


  ),
                  )
                  // ********************
                ]
              ),
            ),
          ),
        )),



      ],
    ),
  );
}