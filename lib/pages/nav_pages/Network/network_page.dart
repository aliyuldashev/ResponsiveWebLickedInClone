import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/network_page_desktop.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/network_page_mini_tablet.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/network_page_mobile.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/network_page_tablet.dart';
import 'package:linkedin_web_ui/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileUi: NetworkPageMobile(),
        tabletUi: NetworkPageTablet(),
        smallTabletUi: NetworkPageMiniTabletUI(),
        desktopUi: NetworkPageDesktopUI());
  }
}
