import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class GroupWidget_widget extends StatefulWidget {
  final String name;
  final int number;
  const GroupWidget_widget({Key? key, required this.name, required this.number})
      : super(key: key);

  @override
  State<GroupWidget_widget> createState() => _GroupWidget_widgetState();
}

class _GroupWidget_widgetState extends State<GroupWidget_widget> {
  bool _isHover = false;
  bool _textHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Material(
        elevation: _isHover == true ? 4 : 0,
        borderRadius: BorderRadius.circular(10),
        color: linkedInWhiteFFFFFF,
        child: Container(
          width: 180,
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: linkedInLightGreyCACCCE, width: 1),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      child: Image.asset(
                        "assets/bg_image_1.jpeg",
                        fit: BoxFit.fill,
                      )),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 85,
                        height: 85,
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/profile_1.jpeg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      child: Text(
                        widget.name,
                        maxLines: 2,
                        style: TextStyle(
                            backgroundColor: linkedInWhiteFFFFFF,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            decoration: _textHover == true
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            overflow: TextOverflow.ellipsis),
                      ),
                      onHover: (value) {
                        setState(() {
                          _textHover = value;
                        });
                      },
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${widget.number.toString()} members",
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blue,
                          side: BorderSide(color: Colors.blue, width: 2),
                        ),
                        child: Container(
                            width: double.infinity,
                            child: const Text(
                              "Join",
                              textAlign: TextAlign.center,
                            )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
