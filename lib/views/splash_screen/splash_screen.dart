import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/views/auth_screen/login_screen.dart';
import 'package:flutter_application_1/widgets_common/applogo_widgets.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen

  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getx
      Get.to(() =>
          const LoginScreen()); //import Get and use dart to and pass our loginscreen
    });
  }

  //using initstate to execute function on the start of our app
  @override
  void initState() {
    changeScreen(); //calling changeScreen
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.orange500,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(bg, width: 300),
            ),

            applogoWidget(),
            const SizedBox(height: 20), // Add spacing here
            appname.text.fontFamily(bold).size(10).white.make(),
          ],
        ),
      ),
    );
  }
}
