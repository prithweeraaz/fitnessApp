
import 'package:fitness_app/consts/consts.dart';

Widget homeButtons({height , width, icon,String? title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(Colors.red).make()
    ],
  ).box.rounded.white.size(width, height).shadow.make();
}