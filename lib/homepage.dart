import 'package:flutter/material.dart';
import 'package:whatsapp_clone/UI%20Colors/AppColor.dart';
import 'package:whatsapp_clone/custom/TabText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    var title = [
      "Happy Family...",
      "Cute Family...",
      "Sweet Family...",
      "My Family...",
      "Apple Pie...",
      "Cuteness Overload...",
      "Dark Demons...",
      "Flutter Learn...",
      "Emily Family...",
      "Loving Family...",
    ];

    var bg = [
      "bg1.jpg",
      "bg2.jpg",
      "bg3.jpg",
      "bg4.jpg",
      "bg5.jpg",
      "bg6.png",
      "bg7.jpg",
      "bg8.jpg",
      "bg9.jpg",
      "bg10.jpg",
    ];

    return Scaffold(
      // backgroundColor: AppColor.header,
      body: Container(
        margin: EdgeInsets.only(top: 50),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.header,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 40,
                        width: 140,
                        child: Text(
                          "WhatsApp",
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColor.unselecttext,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white38,
                          size: 30,
                        ),
                        onPressed: () {
                          // Some operation
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert_sharp,
                          size: 30,
                          color: Colors.white38,
                        ),
                        onPressed: () {
                          // Some operation
                        },
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        labelPadding: EdgeInsets.only(left: 20, right: 20),
                        controller: _tabController,
                        labelColor: AppColor.selecttext,
                        unselectedLabelColor: AppColor.unselecttext,
                        // isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: AppColor.selecttext,
                        tabs: [
                          IconButton(
                            icon: Icon(Icons.photo_camera),
                            onPressed: () {},
                          ),
                          Tab(text: "CHATS"),
                          Tab(text: "STATUS"),
                          Tab(text: "CALLS"),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: AppColor.body,
              height: MediaQuery.of(context).size.height - 160,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                TabText("CHATS"),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
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
                                    backgroundImage:
                                        AssetImage("img/" + bg[index]),
                                    radius: 25,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 20, left: 13),
                                          child: TabText(
                                            title[index],
                                            size: 15,
                                            color: AppColor.title,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 10),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                    }),
                TabText("Your Status "),
                TabText("CALLS"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
