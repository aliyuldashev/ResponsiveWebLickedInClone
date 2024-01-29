import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class PandingWidget extends StatelessWidget {
  const PandingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: linkedInWhiteFFFFFF,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: linkedInLightGreyCACCCE, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "No pending invitations",
            style: TextStyle(
                fontSize: 16,
                color: linkedInMediumGrey86888A,
                fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "Manage",
              style: TextStyle(
                  fontSize: 16,
                  color: linkedInMediumGrey86888A,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
