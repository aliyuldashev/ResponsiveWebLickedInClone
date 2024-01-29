import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/peopleWidget/People.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

extension mulpitlyWidget on Widget {
  operator *(int number) {
    List<Widget> lists = [];
    for (int i in Iterable<int>.generate(number)) {
      lists.add(this);
    }
    return lists;
  }
}

class PeopleWidget extends StatefulWidget {
  final String title;
  final int number;
  final double hight;
  const PeopleWidget(
      {Key? key,
      required this.title,
      required this.number,
      required this.hight})
      : super(key: key);

  @override
  State<PeopleWidget> createState() => _PeopleWidgetState();
}

class _PeopleWidgetState extends State<PeopleWidget> {
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
          height: widget.hight,
          child: GridView.count(
            // mainAxisSize: MainAxisSize.min,
            scrollDirection: Axis.vertical,
            crossAxisCount: widget.number ~/ 2, mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.65,
            shrinkWrap: true,
            children: PeopleWidget_widget(
                    name: "Ali Yuldashev",
                    title: "Student of Inha University",
                    mutual: 12) *
                8,
          ),
        )
      ],
    );
  }
}
