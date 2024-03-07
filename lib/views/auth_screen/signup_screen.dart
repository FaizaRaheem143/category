import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/widgets_common/applogo_widgets.dart';
import 'package:flutter_application_1/widgets_common/custom_textfield.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Vx.orange500,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.9,
        ),
        Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.screenHeight * 0),
                  // Giving responsive space so it can fix to any device screen,
                  // 0.1 is 10% space from above
                  applogoWidget(),
                  30.heightBox,
                  const Text(
                    "Join the $app",
                    style: TextStyle(
                        fontFamily: bold, fontSize: 18, color: Colors.black),
                  ),
                  15.heightBox,
                  Column(
                    children: [
                      customTextField(hint: nameHint, title: name),
                      8.heightBox,
                      customTextField(hint: emailHint, title: email),
                      8.heightBox,
                      customTextField(hint: passwordlHint, title: password),
                      8.heightBox,
                      customTextField(
                          hint: passwordlHint, title: retypePassword),
                      8.heightBox,
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: forgetPass.text.make(),
                        ),
                      ), // Create forgetpassword in strings file
                      Row(
                        children: [
                          Checkbox(
                            checkColor: redColor,
                            value: agreeToTerms,
                            onChanged: (newValue) {
                              setState(() {
                                agreeToTerms =
                                    newValue ?? false; // Check the checkbox
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            // Expand the term and condition according to screen
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree to the ",
                                    style: TextStyle(
                                        fontFamily: regular, color: fontGrey),
                                  ),
                                  TextSpan(
                                    text: termAndCond,
                                    style: TextStyle(
                                        fontFamily: regular, color: redColor),
                                  ),
                                  TextSpan(
                                    text: " & ",
                                    style: TextStyle(
                                        fontFamily: regular, color: fontGrey),
                                  ),
                                  TextSpan(
                                    text: privacyPolicy,
                                    style: TextStyle(
                                        fontFamily: regular, color: redColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      15.heightBox,
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.disabled) ||
                                !agreeToTerms) {
                              return Colors
                                  .grey; // Light grey when disabled or terms not agreed
                            } else {
                              return Vx
                                  .orange500; // Orange when enabled and terms agreed
                            }
                          }),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(12)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
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
                      15.heightBox,
                      // Wrapping into gesture detection of velocity x
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          alreadyHaveAccount.text.color(fontGrey).make(),
                          login.text.color(redColor).make().onTap(() {
                            Get.back();
                          }),
                        ],
                      )
                          .box
                          .white
                          .rounded
                          .padding(const EdgeInsets.all(16))
                          .width(context.screenWidth - 70)
                          .make(),
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .padding(const EdgeInsets.all(16))
                      .width(context.screenWidth - 70)
                      .shadowSm
                      .make(), // Add shadow
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
