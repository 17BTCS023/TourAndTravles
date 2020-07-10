import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'Constant/Constant.dart';
import 'Screen/Faqs.dart';
import 'Screen/HelpAndSupport.dart';
import 'Screen/MyProfilePage.dart';
import 'Screen/MyTrips.dart';
import 'Screen/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: MyAccountScreen(),
    );
  }
}

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    var UserInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: SizeUnit.w * 12,
            width: SizeUnit.w * 12,
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: SizeUnit.w * 6,
                  backgroundImage: NetworkImage(
                      'https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/original.jpeg'),
                ),
              ],
            ),
          ),
          SizedBox(height: SizeUnit.w * 2),
          Text('S.Shanaya ', style: TitleText,),
          SizedBox(height: SizeUnit.w * 0.5),
          Text('shanaya.s@gmail.com', style: CaptionText,),
        ],
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: SizeUnit.w * 3),
        UserInfo,
        SizedBox(width: SizeUnit.w * 3),
      ],
    );

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('My Account'),
        ),
        body:  Column(
        children: <Widget>[
          SizedBox(height: SizeUnit.w * 5),
          header,
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 20),
              children: <Widget>[
                MyAccountOptions(
                  icon: LineAwesomeIcons.user,
                  option: 'My Profile',
//                  moveTo: 'MyProfilePage',
                ),
                MyAccountOptions(
                  icon: LineAwesomeIcons.telegram_plane,
                  option: 'My Trips',
                ),
                MyAccountOptions(
                  icon: LineAwesomeIcons.rocket_chat,
                  option: 'FAQs',
                ),
                MyAccountOptions(
                  icon: LineAwesomeIcons.question_circle,
                  option: 'Help & Support',
                ),
                MyAccountOptions(
                  icon: LineAwesomeIcons.cog,
                  option: 'Settings',
                ),
                MyAccountOptions(
                  icon: LineAwesomeIcons.alternate_sign_out,
                  option: 'Logout',
                  hasNavigation: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyAccountOptions extends StatelessWidget {
  final IconData icon;
  final String option;
  final bool hasNavigation;

  const MyAccountOptions({
    Key key,
    this.icon,
    this.option,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white,
      child: Container(
        alignment: Alignment.center,
        height: SizeUnit * 4.5,
        margin: EdgeInsets.symmetric(
          horizontal: SizeUnit.w * 2,
        ).copyWith(
          bottom: SizeUnit.w * 2,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeUnit.w * 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeUnit.w * 4),
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              this.icon,
              size: SizeUnit.w * 2.5,
            ),
            SizedBox(width: SizeUnit.w * 1.5),
            Text(
              this.option,
              style: TitleText.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            if (this.hasNavigation)
              Icon(
                LineAwesomeIcons.angle_right,
                size: SizeUnit.w * 2.5,
              ),
          ],
        ),
      ),
      onPressed:  (){
        switch(option){
          case 'My Profile':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyProfilePage()));
            break;
          case 'My Trips':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyTrips()));
            break;
          case 'FAQs':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Faqs()));
            break;
          case 'Help & Support':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HelpAndSupport()));
            break;
          case 'Settings':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Settings()));
            break;
          case 'Logout':
            print('Logout pressed');
            break;
        };
      },
    );
  }
}


