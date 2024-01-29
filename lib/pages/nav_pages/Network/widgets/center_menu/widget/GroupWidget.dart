import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/GroupWidget/Group.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class GroupWidget extends StatefulWidget {
  final String title;
  const GroupWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<GroupWidget> createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<GroupWidget> {
  bool _isSeeAllHovered = false;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
        SizedBox(
          width: double.infinity,
          height: 600,
          child: GridView.count(
            // mainAxisSize: MainAxisSize.min,
            scrollDirection: Axis.vertical,

            crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10,
            childAspectRatio: 0.7,
            shrinkWrap: true,
            children: const [
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
              GroupWidget_widget(name: "Ali Yuldashev", number: 12),
            ],
          ),
        )
      ],
    );
  }
}
