// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:container_tab_indicator/container_tab_indicator.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: 570,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      16.0,
                      125.0,
                      16.0,
                      16.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(
                        22.0,
                        38.0,
                        22.0,
                        17.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: ListView(
                        children: [
                          Center(
                            child: Text(
                              "James S. Hernandes",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text("hernandex.redial@gmail.ac.in",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.account_circle_sharp, size: 32),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Icon(Icons.keyboard_arrow_right, size: 32)
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.language, size: 32),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "Language",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Icon(Icons.keyboard_arrow_right, size: 32)
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.privacy_tip_outlined, size: 32),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "Terms & Conditions",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Icon(Icons.keyboard_arrow_right, size: 32)
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.help_outline, size: 32),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "Help Center",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Icon(Icons.keyboard_arrow_right, size: 32)
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.power_settings_new,
                                      size: 32,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "Logout",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 85,
                    left: (MediaQuery.of(context).size.width / 2) - 48,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.purple,
                      child: Image.asset("assets/user.png"),
                    )),
                Positioned(
                  top: 157,
                  left: (MediaQuery.of(context).size.width / 2) + 24,
                  child: SvgPicture.asset("assets/Country.svg"),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard>
    with SingleTickerProviderStateMixin {
  int active = 0;
  late TabController _tabController;
  late PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            dividerColor: Color(0x00FFFFFF),
            indicator: ContainerTabIndicator(
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 7),
                color: Colors.blue,
                width: 200,
                radius: BorderRadius.circular(16)),
            tabs: [
              Tab(
                  child: Text(
                "LeaderBoard",
                style: TextStyle(
                    color: active == 0 ? Colors.white : Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )),
              Tab(
                  child: Text("Challenges",
                      style: TextStyle(
                          color: active == 1 ? Colors.white : Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w700))),
            ],
          ),
        ),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                print(_tabController.index);
                _tabController.index = value.floor();
                print(_tabController.index);
                active = value.floor();
                setState(() {});
              },
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    height: viewportConstraints.maxHeight - 16,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                    child: SizedBox(
                      height: 738,
                      child: Stack(
                        // fit: StackFit.expand,
                        children: [
                          Positioned(
                            top: 11.5,
                            left: viewportConstraints.maxWidth / 2 - 50,
                            child: Transform.rotate(
                              angle: 45 * 3.1415927 / 180,
                              child: Container(
                                width: 75,
                                height: 75,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFEFEEFC)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                      height: 8,
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Positioned(
                            top: 20,
                            child: Container(
                              height: 728,
                              width: viewportConstraints.maxWidth - 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xFFEFEEFC)),
                              child: ListView.builder(
                                // shrinkWrap: true,
                                itemCount: 25,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF5F9FF),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 210,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(7),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF5F9FF),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                            width: 1.5)),
                                                    alignment: Alignment.center,
                                                    child: Text("${index + 1}"),
                                                  ),
                                                  Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Positioned(
                                                          // top: 85,
                                                          // left: ,
                                                          child: CircleAvatar(
                                                        radius: 28,
                                                        backgroundColor:
                                                            Colors.purple,
                                                        child: Image.asset(
                                                            "assets/user.png"),
                                                      )),
                                                      Positioned(
                                                        // top: 157,
                                                        // left: ,
                                                        child: SvgPicture.asset(
                                                          "assets/Country.svg",
                                                          width: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        "Davis Curtis",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text("2,569 Points"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            0 <= index && index <= 2
                                                // ? Text("${index + 1}")
                                                ? SvgPicture.asset(
                                                    "assets/medal${index + 1}.svg")
                                                : SizedBox(),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(
                    padding: EdgeInsets.all(12),
                    height: viewportConstraints.maxHeight - 16,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                    child: SizedBox(
                      height: 738,
                      child: Stack(
                        // fit: StackFit.expand,
                        children: [
                          Positioned(
                            top: 11.5,
                            left: viewportConstraints.maxWidth / 2 - 47.5,
                            child: Transform.rotate(
                              angle: 45 * 3.1415927 / 180,
                              child: Container(
                                width: 75,
                                height: 75,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFEFEEFC)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                      height: 8,
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Positioned(
                            top: 20,
                            child: Container(
                              height: 728,
                              width: viewportConstraints.maxWidth - 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xFFEFEEFC)),
                              child: ListView.builder(
                                // shrinkWrap: true,
                                itemCount: 25,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(18),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF5F9FF),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              width: 277.5,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: "No Poverty",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Colors.red)),
                                                  ],
                                                  text:
                                                      "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                maxLines: 4,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 14, vertical: 5),
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFE8FFFF),
                                                  border: Border.all(
                                                      color: Color(0xFF2BB6E0),
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              child: Text("⭐4"),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
