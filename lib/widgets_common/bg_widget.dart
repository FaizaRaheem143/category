import 'package:flutter_application_1/consts/consts.dart';
//for background of all same screen

Widget bgWidget({Widget? child}) //creating widget as a parameter called child
{
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child, //passing above child
  );
}
