import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            mySkills(),
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
    );
  }
}

mySkills() {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: Color(0xFF00FFA2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
  );
}
