import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/alsoFolowWidget/alsoFolow.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/newslaterWidget/Newslater.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class AlsoFolowWidget extends StatefulWidget {
  final String title;
  const AlsoFolowWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<AlsoFolowWidget> createState() => _AlsoFolowWidgetState();
}

class _AlsoFolowWidgetState extends State<AlsoFolowWidget> {
  bool _isSeeAllHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 16,
                    color: linkedInMediumGrey86888A,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isSeeAllHovered = value;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: _isSeeAllHovered == true
                        ? linkedInMediumGrey86888A.withOpacity(0.5)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 16,
                        color: linkedInMediumGrey86888A,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 750,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: const [
                alsoFolowWidget_widget(
                    Name: "TaeYong Kim",
                    description:
                        "Talks about #work, #career, #business, #leadership, and #management",
                    position:
                        "경영자, 연결자, 무경계자, 작가(거인의리더십/통찰의시간/일의격). To empower also"),
                alsoFolowWidget_widget(
                    Name: "TaeYong Kim",
                    description:
                        "Talks about #work, #career, #business, #leadership, and #management",
                    position:
                        "경영자, 연결자, 무경계자, 작가(거인의리더십/통찰의시간/일의격). To empower also"),
                alsoFolowWidget_widget(
                    Name: "TaeYong Kim",
                    description:
                        "Talks about #work, #career, #business, #leadership, and #management",
                    position:
                        "경영자, 연결자, 무경계자, 작가(거인의리더십/통찰의시간/일의격). To empower also"),
                alsoFolowWidget_widget(
                    Name: "TaeYong Kim",
                    description:
                        "Talks about #work, #career, #business, #leadership, and #management",
                    position:
                        "경영자, 연결자, 무경계자, 작가(거인의리더십/통찰의시간/일의격). To empower also"),
                alsoFolowWidget_widget(
                    Name: "TaeYong Kim",
                    description:
                        "Talks about #work, #career, #business, #leadership, and #management",
                    position:
                        "경영자, 연결자, 무경계자, 작가(거인의리더십/통찰의시간/일의격). To empower also"),
                alsoFolowWidget_widget(
                    Name: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    position: "The Economist"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
