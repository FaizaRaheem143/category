import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/views/auth_screen/signup_screen.dart';
import 'package:flutter_application_1/views/home_screen/home.dart';
import 'package:flutter_application_1/widgets_common/applogo_widgets.dart';
import 'package:flutter_application_1/widgets_common/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Vx.orange500, // Background color for half of the screen
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.9,
        ),
        Scaffold(
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                //giving responsive space so it can fix to any device screen,o.1 is 10% space from above
                applogoWidget(),
                30.heightBox, //use for spacing
                const Text(
                  "Log in to $app",
                  style: TextStyle(
                      fontFamily: bold, fontSize: 18, color: Colors.black),
                ),
                30.heightBox,
                Column(
                  children: [
                    customTextField(hint: emailHint, title: email),
                    8.heightBox,
                    customTextField(hint: passwordlHint, title: password),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: forgetPass.text.make(),
                      ),
                    ), //create forgetpasswaord in strigs file
                    15.heightBox,
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => const Home()); // Add your login logic here
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Vx.orange500),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      child: Container(
                        width: context.screenWidth - 50,
                        alignment: Alignment.center,
                        child: const Text(
                          login,
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                    15.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    15.heightBox,
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() =>
                            const SignupScreen()); // Add your sign-up logic here
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Vx.orange500),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      child: Container(
                        width: context.screenWidth - 50,
                        alignment: Alignment.center,
                        child: const Text(
                          signup,
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .shadowSm
                    .make(), //giving width
              ], //children
            ), //Column
          ), //Center5
        ),
      ],
    );
  }
}
