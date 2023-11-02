import 'package:cva_app/widgets/about_me.dart';
import 'package:cva_app/widgets/contact_me.dart';
import 'package:cva_app/widgets/project_me.dart';
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
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/user.png',
                        width: 144,
                        alignment: Alignment.topCenter,
                      ),
                    ),
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
                  AboutMe(),
                  MyProject(),
                  ContactMe(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
