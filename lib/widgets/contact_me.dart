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
            tabBarTitleWithGreenLine(),
            SizedBox(height: 34),
            // Name TextFiled
            textBoxIconAndName(
              'assets/images/name.png',
              'Name',
            ),

            SizedBox(height: 4),
            textBox(hintText: 'Name'),
            SizedBox(height: 25),

            // Email or phone TextField
            textBoxIconAndName(
              'assets/images/email.png',
              'Email or Phone',
            ),

            SizedBox(height: 4),
            textBox(hintText: 'Emial or Phone'),
            SizedBox(height: 25),

            // message TextFiled
            textBoxIconAndName(
              'assets/images/message.png',
              'Messages',
            ),

            SizedBox(height: 4),
            textBox(
              height: 140,
              hintText: 'Messages',
            ),
            SizedBox(height: 22),

            submitButton()
          ],
        ),
      ),
    );
  }

  tabBarTitleWithGreenLine() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact me',
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
      ],
    );
  }

  Row textBoxIconAndName(String Images, String text) {
    return Row(
      children: [
        Image.asset(
          Images,
          width: 18,
        ),
        SizedBox(width: 7),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF004466),
          ),
        )
      ],
    );
  }

  textBox({double height = 48, String hintText = ''}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFFF0F0F0),
      ),
      height: height,
      child: TextField(
        cursorColor: Color(0xFF004466),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFFC6C2C2),
            fontSize: 16,
            fontFamily: 'raleway-regular',
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20),
        ),
      ),
    );
  }

  // Submit-Button UI
  submitButton() {
    return Center(
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
    );
  }
}
