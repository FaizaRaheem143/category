import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/consts/list.dart';
import 'package:flutter_application_1/views/profile_screen/components/details_card.dart';
import 'package:flutter_application_1/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      // Apply background widget to the screen
      child: Scaffold(
        // Scaffold for screen structure
        body: Stack(
          // Stack to overlay background color
          children: [
            Container(
              // Background container with orange color
              height: MediaQuery.of(context).size.height / 2.8,
              color: Vx.orange500,
            ),
            SafeArea(
              child: Column(
                children: [
                  // Edit profile button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit, color: whiteColor),
                    ).onTap(() {}),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Image.asset(imgProfile,
                                width: 100, fit: BoxFit.cover) // Profile image
                            .box
                            .roundedFull
                            .clip(Clip
                                .antiAlias) // Apply anti-aliasing for smoother clipping
                            .make(),
                        10.widthBox,
                        Expanded(
                          // Expanded widget to occupy remaining space
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Dummy User"
                                  .text
                                  .fontFamily(semibold)
                                  .white
                                  .make(),
                              "customer@example.com".text.white.make(),
                            ],
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                            color: whiteColor,
                          )),
                          onPressed: () {},
                          child:
                              "logout".text.fontFamily(semibold).white.make(),
                        )
                      ],
                    ),
                  ),

                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailsCard(
                        count: "00",
                        title: "in your cart",
                        width: context.screenWidth / 3.4,
                      ),
                      detailsCard(
                        count: "32",
                        title: "in your wishlist",
                        width: context.screenWidth / 3.4,
                      ),
                      detailsCard(
                        count: "675",
                        title: "your orders",
                        width: context.screenWidth / 3.4,
                      )
                    ],
                  ),

                  // Buttons section
                  // List of buttons with icons
                  ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(color: lightGrey);
                    },
                    itemCount: profileButtonsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonsIcon[index],
                          width: 22,
                        ),
                        title: profileButtonsList[index]
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    },
                  )
                      .box
                      .white
                      .rounded
                      .margin(const EdgeInsets.all(12))
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .shadowSm
                      .make()
                      .box
                      .color(Vx.orange500)
                      .make()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
