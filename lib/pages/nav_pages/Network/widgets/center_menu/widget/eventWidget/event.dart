import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class EventWidget_widget extends StatefulWidget {
  final String name;
  final int number;
  const EventWidget_widget({Key? key, required this.name, required this.number})
      : super(key: key);

  @override
  State<EventWidget_widget> createState() => _EventWidget_widgetState();
}

class _EventWidget_widgetState extends State<EventWidget_widget> {
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
          width: 250,
          height: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: linkedInLightGreyCACCCE, width: 1),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  child: SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/bg_image_1.jpeg",
                      fit: BoxFit.fill,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Text(
                      "Fri, Jan 31, 8:00 PM",
                      style: TextStyle(
                          color: linkedInMediumGrey86888A,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.people),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2,463 attendees",
                          style: TextStyle(
                            color: linkedInMediumGrey86888A,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
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
                              "View",
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
