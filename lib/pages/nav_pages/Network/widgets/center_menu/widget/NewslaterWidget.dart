import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/newslaterWidget/Newslater.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class NewsleterWidget extends StatefulWidget {
  final String title;
  const NewsleterWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<NewsleterWidget> createState() => _NewsleterWidgetState();
}

class _NewsleterWidgetState extends State<NewsleterWidget> {
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
            height: 700,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: const [
                Newsletter(
                    title: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    publisher: "The Economist"),
                Newsletter(
                    title: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    publisher: "The Economist"),
                Newsletter(
                    title: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    publisher: "The Economist"),
                Newsletter(
                    title: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    publisher: "The Economist"),
                Newsletter(
                    title: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    publisher: "The Economist"),
                Newsletter(
                    title: "The Economist’s week ahead",
                    description:
                        "The trends and stories our digital newsroom expects to dominate",
                    publisher: "The Economist"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
