import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3, // Number of tabs
      vsync: this, // Required for the SingleTickerProviderStateMixin
    );
  }

  @override
  void dispose() {
    _tabController
        .dispose(); // Don't forget to dispose the controller when done.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Info about user: jobs, name, profile
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                bottom: 12,
                right: 18,
                left: 18,
              ),
              child: Column(
                children: [
                  // user profile
                  Image.asset(
                    'assets/images/user.png',
                    width: 144,
                    alignment: Alignment.topCenter,
                  ),

                  SizedBox(
                    height: 19,
                  ),

                  // user name
                  Text(
                    'amir shacaour',
                    style: TextStyle(
                      fontFamily: 'raleway-regular',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF004466),
                    ),
                  ),

                  SizedBox(
                    height: 19,
                  ),

                  // user job and skills
                  Text(
                    'Mobile application ( flutter )',
                    style: TextStyle(
                      fontFamily: 'raleway-regular',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF004466),
                    ),
                  ),

                  Text(
                    'Developer',
                    style: TextStyle(
                      fontFamily: 'raleway-regular',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF004466),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  // TabBar
                  Container(
                    //color: Colors.black,
                    child: TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.transparent,
                      enableFeedback: false,
                      indicator: BoxDecoration(
                        color: Color(0xFF00FFA2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            'About me',
                            style: TextStyle(
                              color: Color(0xFF004466),
                              fontSize: 14,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'My project',
                            style: TextStyle(
                              color: Color(0xFF004466),
                              fontSize: 14,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Contact Me',
                            style: TextStyle(
                              color: Color(0xFF004466),
                              fontSize: 14,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'About me',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Divider(
                            thickness: 5,
                            color: Color(0xFF00FFA2),
                            indent: 0,
                            endIndent: 179,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nDictumst sagittis semper orci\nsuspendisse. Mattis curabitur\nmagna consectetur pretium\nluctus dictumst. Condimentum\nipsum, semper ut at donec\ninteger. Interdum consequat,\nsapien ultricies arcu, et.               .',
                            style: TextStyle(
                              color: Color(0xFF004466),
                              fontSize: 18,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'My Experience',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Divider(
                            thickness: 5,
                            color: Color(0xFF00FFA2),
                            indent: 0,
                            endIndent: 179,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nDictumst sagittis semper orci\nsuspendisse. Mattis curabitur\nmagna consectetur pretium\nluctus dictumst. Condimentum\nipsum, semper ut at donec\ninteger. Interdum consequat,\nsapien ultricies arcu, et.               .',
                            style: TextStyle(
                              color: Color(0xFF004466),
                              fontSize: 18,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'My Skills',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Divider(
                            thickness: 5,
                            color: Color(0xFF00FFA2),
                            indent: 0,
                            endIndent: 179,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: Color(0xFF00FFA2),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Image.asset(
                                    'assets/images/nextjs.png',
                                    width: 44,
                                    height: 26,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: Color(0xFF00FFA2),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 9.0,
                                    vertical: 3,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/black-figma.png',
                                        width: 20,
                                      ),
                                      Text(
                                        'Figma',
                                        style: TextStyle(
                                          color: Color(0xFF004466),
                                          fontSize: 14,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'My Links',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'raleway-regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Divider(
                            thickness: 5,
                            color: Color(0xFF00FFA2),
                            indent: 0,
                            endIndent: 179,
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/emial.png',
                                width: 13,
                              ),
                              Text(
                                'Email:',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'amirshakouridesign@gmail.com',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/whatsApp.png',
                                width: 13,
                              ),
                              Text(
                                'WhatsApp:',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '+98-9330348792',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/github.png',
                                width: 13,
                              ),
                              Text(
                                'github:',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'github.com/amirshacour',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/figma.png',
                                width: 8,
                              ),
                              Text(
                                'Figma:',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'figma.com/amirshacour',
                                style: TextStyle(
                                  color: Color(0xFF004466),
                                  fontSize: 12,
                                  fontFamily: 'raleway-regular',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
