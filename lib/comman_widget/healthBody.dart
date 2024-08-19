import 'package:fitness_app/consts/consts.dart';
import 'package:fitness_app/consts/strings.dart';

import '../consts/list.dart';

Widget healthBody(color){
  return
    Container(

        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
              (crossAxisCount:2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 170),
            itemBuilder: (context,index){
              return Column(
                children: [
                  10.heightBox,
                  Image.asset(iconsList[index],
                    width: 80, fit: BoxFit.cover),
                  10.heightBox,
                  iconText[index].text.color(Colors.black).fontFamily(bold).size(16).align(TextAlign.center).make(),
                ],
              ).box.color(color[index]).clip(Clip.antiAlias).rounded.shadow.make();
            })
  );
}