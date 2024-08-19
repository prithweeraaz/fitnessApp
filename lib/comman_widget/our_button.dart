import 'package:fitness_app/consts/consts.dart';

Widget ourButton({onPress,color,textColor,String? title}){
  // String titleN = title;
  return ElevatedButton(

    style: ElevatedButton.styleFrom(
      backgroundColor:color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child:title!.text.color(textColor).fontFamily(bold).make(),
  );
}
Widget ourButton2({onPress,color,textColor,String? title }){

  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor:color,
      padding: const EdgeInsets.only(left: 32,right: 30),
    ),
    onPressed: onPress,
    child:title!.text.color(textColor).fontFamily(bold).make(),
  );
}