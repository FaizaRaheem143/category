// ignore: depend_on_referenced_packages
import 'package:flutter_application_1/consts/consts.dart';

Widget customTextField(
    {String? title,
    String? hint,
    controller}) //creating properties for textfield
{
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //to put textfield at start
      //using column bcz we need text and textfield. so i add const credentials in strings.dart file
      children: [
        title!.text.color(redColor).fontFamily(semibold).size(16).make(),
        5.heightBox,
        //creating text field
        TextFormField(
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint,
            isDense: true, //to reduce size
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none, //by default no border
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: redColor)),
          ),
        ),
        5.heightBox, //for spacing b/w textfields
      ]);
}
