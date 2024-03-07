import 'package:flutter_application_1/consts/consts.dart';

// Widget for displaying details card
Widget detailsCard({required double width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        count ?? "", // Display count provided or empty string if null
        style: const TextStyle(
            fontFamily: bold, color: darkFontGrey, fontSize: 16),
      ),
      5.heightBox,
      Text(
        title ?? "", // Display title provided or empty string if null
        style: const TextStyle(color: darkFontGrey),
      ),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(80)
      .padding(const EdgeInsets.all(4))
      .make(); // Create the card widget with specified properties
}
