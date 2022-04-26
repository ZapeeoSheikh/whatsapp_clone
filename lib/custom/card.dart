import 'package:flutter/material.dart';

import '../UI Colors/AppColor.dart';
import 'TabText.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          color: AppColor.body,
          child: Container(
            margin: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("img/whatsapp.jpeg"),
                  radius: 25,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 13),
                        child: TabText(
                          "Happy Family...",
                          size: 15,
                          color: AppColor.title,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: AppColor.icons,
                          ),
                          Icon(
                            Icons.image,
                            color: AppColor.icons,
                          ),
                          TabText(
                            "Photo",
                            size: 15,
                            color: AppColor.unselecttext,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      child: TabText(
                        "Yesterday",
                        color: AppColor.unselecttext,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.volume_off_sharp,
                          color: AppColor.icons,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.push_pin_rounded,
                          color: AppColor.icons,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
