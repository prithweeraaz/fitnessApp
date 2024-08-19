import 'package:fitness_app/comman_widget/applogo_widget.dart';
import 'package:fitness_app/consts/consts.dart';
import 'package:fitness_app/views/auth_screen/login_screen.dart';
import 'package:fitness_app/views/home_screen/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // Creating the method to change the screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 3), (){
      //Using getX
      Get.offAll(()=>const HomeScreen());

      // auth.authStateChanges().listen((User? user) {
      //   if (user == null && mounted){
      //     Get.to(() => const LoginScreen());
      //   }
      //   else{
      //     Get.to(() => const Home());
      //   }
      // });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(child: Column(

        children: [

          250.heightBox,
          applogoWidget(),
          20.heightBox,
          appname.text.size(22).white.fontFamily(bold).make(),
          5.heightBox,
          appversion.text.white.make(),
          const Spacer(),
          credits.text.white.semiBold.make(),
          20.heightBox

          //our splash screen UI is completed...

        ],
      ),),
    );
  }
}
