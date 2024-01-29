import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/network_center_menu.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/left_menu/network_left_menu.dart';

class NetworkPageMobile extends StatelessWidget {
  const NetworkPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: const SizedBox(
        width: 1150,
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NetworkLeftMenu(
                maxwidth: 300,
              ),
              // NetworkCenterMenu(
              //   maxwidth: 790,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
