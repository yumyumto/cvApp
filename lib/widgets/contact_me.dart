import 'package:flutter/material.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact me',
              style: TextStyle(
                color: Colors.black,
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
            SizedBox(height: 34),
            // Name TextFiled
            Row(
              children: [
                Image.asset(
                  'assets/images/name.png',
                  width: 18,
                ),
                SizedBox(width: 7),
                Text(
                  'Name',
                )
              ],
            ),

            SizedBox(height: 4),

            Container(
              color: Color(0xFFF0F0F0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 25),

            // Email or phone TextField
            Row(
              children: [
                Image.asset(
                  'assets/images/email.png',
                  width: 18,
                ),
                SizedBox(width: 7),
                Text(
                  'Email or Phone',
                )
              ],
            ),

            SizedBox(height: 4),

            Container(
              color: Color(0xFFF0F0F0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 25),

            // message TextFiled
            Row(
              children: [
                Image.asset(
                  'assets/images/message.png',
                  width: 18,
                ),
                SizedBox(width: 7),
                Text(
                  'Messages',
                )
              ],
            ),

            SizedBox(height: 4),

            Container(
              color: Color(0xFFF0F0F0),
              height: 140,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 22),

            Center(
              child: Container(
                width: 370,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xFF00FFA2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Color(0xFF004466),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
