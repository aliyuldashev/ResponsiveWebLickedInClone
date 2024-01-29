import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/left_menu/widgets/corporation.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/left_menu/widgets/my_network.dart';

class NetworkLeftMenu extends StatelessWidget {
  final double maxwidth;
  const NetworkLeftMenu({Key? key, required this.maxwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxwidth,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [my_network_left_menu(), corporation_netwrok_left_menu()],
      ),
    );
  }
}
