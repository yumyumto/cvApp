import 'package:flutter/material.dart';

import 'about_me.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Project',
              style: TextStyle(
                color: Color(0xFF004466),
                fontSize: 18,
                fontFamily: 'raleway-regular',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              thickness: 5,
              color: Color(0xFF00FFA2),
              indent: 0,
              endIndent: 179,
            ),
            SizedBox(height: 10),
            projectCard(),
            SizedBox(height: 19),
            projectCard(),
          ],
        ),
      ),
    );
  }

  Card projectCard() {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.asset(
            'assets/images/Capture1.png',
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Marbine.com',
                        style: TextStyle(
                          color: Color(0xFF004466),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '2021 april to novabre',
                        style: TextStyle(
                          color: Color(0xFF004466),
                          fontSize: 14,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Online booking Hotels from all over the\nworld and it use the'
                      'multi hotel booking\napi and so on lorem ipsum and now to\nadfyda'
                      'lkmh hamid hotels and now today\nfrom now to others',
                      style: TextStyle(
                        color: Color(0xFF004466),
                        fontSize: 16,
                        fontFamily: 'raleway-regular',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Powered By: ',
                        style: TextStyle(
                          color: Color(0xFF004466),
                          fontSize: 14,
                          fontFamily: 'raleway-regular',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 6),
                      mySkills(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'View figma design',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'raleway-regular',
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Color(0xFF00FFA2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Website',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'raleway-regular',
                                  ),
                                ),
                                SizedBox(width: 4),
                                Image.asset(
                                  'assets/images/view-link.png',
                                  width: 18,
                                )
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF00FFA2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
