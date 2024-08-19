
import 'package:fitness_app/comman_widget/healthBody.dart';
import 'package:fitness_app/comman_widget/homebody.dart';
import 'package:fitness_app/comman_widget/our_button.dart';
import 'package:fitness_app/consts/consts.dart';
import 'package:fitness_app/consts/strings.dart';
import 'package:fitness_app/views/home_screen/health_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../consts/colors.dart';
import '../../consts/list.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override

  int? _slider = 0 ;
  Map<dynamic,Widget> childern = <dynamic,Widget>{
    0:const Text(assessment,style: TextStyle(color:blueColor,fontSize: 16,fontFamily: semibold),),
    1:const Text(appointment,style: TextStyle(color:blueColor,fontSize: 16,fontFamily: semibold),),

  };

  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          10.widthBox,
          "Hello! ".text.color(bluechall).bold.make(),
          name.text.color(bluechall).bold.make(),
          Spacer(),
          IconButton(onPressed: (){}, icon:Icon(Icons.account_circle))
        ],)

      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Center(

                child: CupertinoSlidingSegmentedControl(
                  padding: EdgeInsets.all(18),
        
                groupValue: _slider,
                backgroundColor: lightwhite2,
        
                onValueChanged: (newValue) {
                  setState(() {
                    _slider = newValue;
                  });
                },
                children:childern,
              ),
              ),
              5.heightBox,
              _slider == 0? Container(
                          child: Column(
                            children: [
                              homebody(icon: imgFitness,title: fitnessAss,body1: fitnessText,color:lightRed1,onPress: (){}),
                              homebody(icon: imgHealth,title: healthRisk,body1:healthText,color:lightgreen,onPress: (){
                                Get.to(HealthScreen());
                              }),
        
                              ourButton2(title: viewAll,color:blue2,textColor: white,onPress: (){})
        
                            ],
                          )
                        ).box.color(lightwhite2).margin(EdgeInsets.symmetric(horizontal: 10)).rounded.make()
                  :Container(
                    child: Column(
                      children: [
                        healthBody(iconcolorList),
                        ourButton2(title: viewAll,color:blue2,textColor: white,onPress: (){})
        
        
                      ],
                    ),
                  ).box.color(lightwhite2).margin(EdgeInsets.symmetric(horizontal: 10)).make(),
        
              // ***********end ****************:
             // *******challenge********************
              Container(
                width: context.screenWidth,
                decoration: BoxDecoration(
                  color:lightwhite2
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Challenges".text.size(16).fontFamily(bold).make(),
                        Spacer(),
                        TextButton(onPressed: (){}, child: viewAll.text.underline.fontFamily(bold).size(16).letterSpacing(1).make()),
                        5.widthBox,
                        IconButton(onPressed:(){}, icon:Icon(Icons.arrow_right_alt_outlined,),color: Colors.white,).box.color(Colors.blue).roundedFull.size(40, 40).make(),
                        //////////////
                      ],
                    ).box.padding(EdgeInsets.symmetric(horizontal: 15)).make(),
                    // ******************

                    Container(
                      width: context.screenWidth,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              5.heightBox,
                              "Today's Challenge!".text.color(green3).semiBold.size(18).make(),
                              10.heightBox,
                              Container(
                                margin: EdgeInsets.all(8),
                                child: "Push Up 20x".text.white.make(),
                              ).box.color(green3).rounded.make(),
                              10.heightBox,
                             Container(width: 200,
                               child: LinearProgressIndicator(
                                 value: 0.2,
                                 minHeight: 10,
                                 valueColor: AlwaysStoppedAnimation(pinkchall),
                               ),
                             ),
                              // 10.heightBox,
                              "10/20 Complete".text.make(),
                              Container(
                                // decoration: BoxDecoration(color: Colors.white),
                                child:Row(children: [
                                  IconButton(onPressed:(){}, icon:Icon(Icons.play_arrow),color: Colors.white,).box.color(Colors.blue).roundedFull.size(40, 40).make(),
                                  TextButton(onPressed: (){}, child: "Continue".text.fontFamily(semibold).size(18).color(blue2).letterSpacing(1).make()),
                                  5.widthBox,
        
                                ],)
                                ).box.rounded.make()
        
                            ],
                          ).box.margin(EdgeInsets.only(left: 10)).make(),
                          Expanded(
                            child: Image.asset(imgPushupgirl,
                                width: 80, fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ).box.rounded.margin(EdgeInsets.symmetric(horizontal: 12)).make(),
                 10.heightBox
                  ],
                )

              ),
              // ********** challenge section end ******************
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Workout Routines".text.size(16).fontFamily(bold).make(),
                  Spacer(),
                  TextButton(onPressed: (){}, child: viewAll.text.underline.fontFamily(bold).size(16).letterSpacing(1).make()),
                  5.widthBox,
                  IconButton(onPressed:(){}, icon:Icon(Icons.arrow_right_alt_outlined,),color: Colors.white,).box.color(Colors.blue).roundedFull.size(40, 40).make(),
                  //////////////
                ],
              ).box.padding(EdgeInsets.symmetric(horizontal: 15)).make(),

              // ***************workOut Section******************************

              Row(
                children: [
                  Expanded(
                    child: VxSwiper.builder(
                        aspectRatio: 16/9,
                        // autoPlay: true,
                        height: 180,
                        enlargeCenterPage: true,
                        itemCount: workout.length,
                        itemBuilder: (context,index){
                          return Row(
                            children: [
                              Image.asset(workout[index],fit: BoxFit.fill).
                              box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [20.heightBox,
                                    "Sweat Starter".text.fontFamily(bold).size(16).color(Colors.blue).make(),
                                    "Full Body".text.fontFamily(regular).make(),
                                    ourButton(title: "Lose Weight",color: white,textColor: blue2),
                                    Row(
                                      children: [
                                        "Difficult: ".text.make(),
                                        "medium".text.color(Colors.red).bold.make(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ).box.color(lightwhite2).rounded.margin(EdgeInsets.all(10)).make();

                        })
                  ),


                ],
              ),
             
              // *****************workout section end****************************
            ],
          ),
        ),
      ),
    );
  }
}
