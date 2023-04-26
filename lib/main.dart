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
      title: Text("امیر شکوری"),
      elevation: 5,
      backgroundColor: Colors.black,
      centerTitle: true,
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
        SizedBox(height: 18),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/user.png'),
            radius: 42,
          ),
        ),
        SizedBox(height: 12),
        Text(
          "امیر شکوری هستم",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "برنامه نویس و مدرس فلاتر",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 4),
        Container(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Text(
            "هرچیزی رو که یاد میگیرم رو با شما به اشتراک میذارم اگه علاقه مند به کار های من هستید میتونید یوتیوب من رو دنبال کنید",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
        ),
        _getRowIcons(),
        SizedBox(
          height: 12,
        ),
        _getSkillLables(),
        SizedBox(width: 20),
        _getResume(),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      runSpacing: 32,
      spacing: 12,
      alignment: WrapAlignment.spaceEvenly,
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

  Widget _getSkillLables() {
    final imagesName = ["android", "dart", "flutter", "java", "kotlin"];

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (var skill in imagesName)
          Card(
            child: Column(children: [
              Container(
                child: Image(image: AssetImage("images/${skill}.png")),
                width: 62,
                height: 62,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Text("${skill}"),
              ),
            ]),
            elevation: 3,
            shadowColor: Colors.black,
          ),
      ],
    );
  }

  Widget _getResume() {
    final List<String> textLists = [
      'برنامه نویس اندروید زرین پال از سال 97',
      'هشت ترم ورکشاپ عملی اندروید دانشگاه تهران',
      'چنل آموزشی یوتیوب از سال 93',
      'مدرس دوره اندروید هاروارد (iran cs50x)',
      'اموزش برنامه نویشی اندروید از سال 93',
      'مدرس و بنیان گذار سایت ExpertFlutter'
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            "سابقه کاری من",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          for (var item in textLists)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: double.infinity),
                Text(item, textDirection: TextDirection.rtl),
              ],
            ),
        ],
      ),
    );
  }
}
