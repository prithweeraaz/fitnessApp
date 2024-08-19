import 'package:fitness_app/comman_widget/bgscreen.dart';
import 'package:fitness_app/consts/consts.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
    body: bgScreen(),
      

    );
  }
}
