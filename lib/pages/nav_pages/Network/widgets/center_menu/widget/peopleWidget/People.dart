import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class PeopleWidget_widget extends StatefulWidget {
  final String name;
  final String title;
  final int mutual;
  const PeopleWidget_widget(
      {Key? key, required this.name, required this.title, required this.mutual})
      : super(key: key);

  @override
  State<PeopleWidget_widget> createState() => _PeopleWidget_widgetState();
}

class _PeopleWidget_widgetState extends State<PeopleWidget_widget> {
  bool _isHover = false;

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
                  const SizedBox(height: 40),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 85,
                        height: 85,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
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
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: linkedInDarkGrey313335,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${widget.mutual.toString()} mutual connections",
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blue,
                          side: BorderSide(color: Colors.blue),
                        ),
                        child: const Row(
                          children: [Icon(Icons.person_add), Text("Connect")],
                        ))
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
