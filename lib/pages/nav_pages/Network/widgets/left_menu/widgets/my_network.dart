import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class my_network_left_menu extends StatefulWidget {
  const my_network_left_menu({Key? key}) : super(key: key);

  @override
  State<my_network_left_menu> createState() => _my_network_left_menuState();
}

class _my_network_left_menuState extends State<my_network_left_menu> {
  bool _show_less_hover = false;
  bool _ishovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: linkedInLightGreyCACCCE, width: 1),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: linkedInWhiteFFFFFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Manage my network",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          _networkIcon(icon: Icons.people, text: "Connection", number: 120),
          _networkIcon(icon: Icons.contact_page, text: "Contact", number: 15),
          _networkIcon(
            icon: Icons.person,
            text: "Folowers and folowing",
          ),
          _networkIcon(icon: Icons.people, text: "Connection", number: 120),
          _networkIcon(
              icon: FontAwesomeIcons.peopleLine, text: "Groups", number: 5),
          _networkIcon(
            icon: Icons.event_note_outlined,
            text: "Events",
          ),
          _networkIcon(
              icon: Icons.find_in_page_sharp, text: "Pages", number: 9),
          _networkIcon(icon: Icons.newspaper, text: "Newslater", number: 1),
          _networkIcon(
            icon: FontAwesomeIcons.hashtag,
            text: "Hashtags",
          ),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _show_less_hover = value;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _show_less_hover == true
                    ? linkedInLightGreyCACCCE.withOpacity(0.2)
                    : Colors.white,
              ),
              child: const Row(
                children: [
                  Text(
                    "Show less",
                    style: TextStyle(
                        color: linkedInMediumGrey86888A,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.keyboard_arrow_up_outlined)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _networkIcon({IconData? icon, String? text, int? number}) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: linkedInWhiteFFFFFF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: linkedInDarkGrey313335,
              ),
              SizedBox(width: 10),
              Text(
                text!,
                style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: linkedInMediumGrey86888A,
                    fontSize: 16),
              ),
            ],
          ),
          number == null
              ? Container()
              : Text(
                  number.toString(),
                  style: const TextStyle(
                      color: linkedInMediumGrey86888A, fontSize: 16),
                )
        ],
      ),
    );
  }
}
