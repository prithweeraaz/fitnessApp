import 'package:fitness_app/consts/consts.dart';
import 'package:fitness_app/consts/strings.dart';

Widget homebody({icon, String? title, String? body1, onPress,color}){
  return Row(
          children: [
            Column(
              children: [
                Image.asset(icon,width: 140,height:120,fit: BoxFit.fill,).box.color(color).rounded.make(),
              ],
            ),
            10.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title!.text.size(16).bold.align(TextAlign.start).make(),
                  5.heightBox,
                  body1!.text.fontFamily(semibold).size(13).align(TextAlign.start).make(),
                  Row(
                    children: [
                      IconButton(onPressed:onPress, icon:Icon(Icons.play_arrow,),color: Colors.white,).box.color(Colors.blue).roundedFull.size(35, 40).make(),
                      TextButton(onPressed: onPress, child: start.text.fontFamily(bold).size(16).make())
                      ],
                  )

                ],
              ),
            ),
  ],
  );

}