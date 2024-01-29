import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class corporation_netwrok_left_menu extends StatelessWidget {
  const corporation_netwrok_left_menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: linkedInWhiteFFFFFF,
          border: Border.all(
            width: 1,
            color: linkedInLightGreyCACCCE,
          ),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _text("About"),
              _text("Accessibility"),
            ],
          ),
          _text("Accessibility"),
          _text_with_icon("Privacy and plicy"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _text("Ad choices"),
              _text("Advertising"),
            ],
          ),
          _text_with_icon("Business Services"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _text("Get the LinkedIn app"),
              _text("More"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                "assets/linkedin_word_logo.png",
                width: 55,
                height: 55,
              ),
              const Text(
                "LinkedIn Corporation © \n2024",
                style: TextStyle(
                    fontSize: 12,
                    color: linkedInDarkGrey313335,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }

  _text(String text) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A),
      ),
    );
  }

  _text_with_icon(String text) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A),
          ),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
