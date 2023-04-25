import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _getAppBar(),
        body: _getMainBody(),
      ),
      theme: ThemeData(fontFamily: "vazir"),
      debugShowCheckedModeBanner: false,
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.black,
      title: Center(
        child: Text("امیر شکوری"),
      ),
    );
  }

  Widget _getMainBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _getHeader(),
          ],
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 16),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/user.png'),
            radius: 42,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "من برنامه نویس و مدرس فلاتر هستم",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 4),
        Text(
          "هرچیزی رو که یاد میگیریم رو دوست دارم با شما به اشتراک بذارم اگه علاقه مند به کار های من هستید میتونید یوتیوب من رو دنبال کنید",
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        _getRow(),
      ],
    );
  }

  Widget _getRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.youtube),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
        ),
      ],
    );
  }
}
