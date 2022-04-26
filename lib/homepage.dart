import 'package:flutter/material.dart';
import 'package:whatsapp_clone/UI%20Colors/AppColor.dart';
import 'package:whatsapp_clone/custom/TabText.dart';
import 'package:whatsapp_clone/custom/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    int selectedindex = 0;
    void onTap() {
      setState(() {
        // selectedindex = ;
      });
    }

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
                      return MyCard();
                    }),
                TabText("CALLS"),
                TabText("CALLS"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
