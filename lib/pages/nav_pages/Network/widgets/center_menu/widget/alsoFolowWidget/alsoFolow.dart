import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class alsoFolowWidget_widget extends StatefulWidget {
  final String Name;
  final String position;
  final String description;
  const alsoFolowWidget_widget(
      {Key? key,
      required this.Name,
      required this.position,
      required this.description})
      : super(key: key);
  @override
  State<alsoFolowWidget_widget> createState() => _State();
}

class _State extends State<alsoFolowWidget_widget> {
  bool _ishover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _ishover = value;
        });
      },
      child: Container(
        width: 250,
        height: 340,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: linkedInLightGreyCACCCE),
            borderRadius: BorderRadius.circular(10),
            color: linkedInWhiteFFFFFF),
        child: Material(
          elevation: _ishover == true ? 4 : 0,
          borderRadius: BorderRadius.circular(10),
          color: linkedInWhiteFFFFFF,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.asset(
                          "assets/bg_image_1.jpeg",
                          fit: BoxFit.fill,
                        )),
                  ),
                  const SizedBox(height: 90),
                  Positioned(
                    top: 15,
                    left: 10,
                    child: Container(
                      width: 60,
                      height: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5, color: linkedInWhiteFFFFFF)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/see_whos_hiring.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.Name,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.position,
                      maxLines: 2,
                      style: const TextStyle(
                          color: linkedInMediumGrey86888A,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.description,
                      maxLines: 2,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: linkedInMediumGrey86888A,
                          fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 45,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset("assets/profile_1.jpeg"),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/profile_2.jpeg"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(width: 20),
                        const Expanded(
                          child: Text(
                            "Followed by Anvarbek, 윤석 and 8 others you know",
                            style: TextStyle(
                              color: linkedInMediumGrey86888A,
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blue,
                          side: BorderSide(color: Colors.blue, width: 2),
                        ),
                        child: Container(
                            width: double.infinity,
                            child: const Text(
                              "Follow",
                              textAlign: TextAlign.center,
                            ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
