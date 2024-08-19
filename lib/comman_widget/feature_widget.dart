import 'package:fitness_app/comman_widget/home_button.dart';
import 'package:fitness_app/consts/consts.dart';

Widget featureWidget({icon ,String? title}){
  return Expanded(
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(icon),
          radius: 30,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Container(
            padding:EdgeInsets.only(left: 10),
              child: SizedBox(
                child: Text(title!,style: TextStyle(fontFamily: bold),)),),
        )
      ],
    ),
  );
}