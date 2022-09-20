import 'package:flutter/material.dart';
import 'package:flutter_project_zand_card/components/item.dart';
import 'package:flutter_project_zand_card/contents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Mikhak",
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey[100],
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: const [
                    LogoApp(),
                    ProfileImage(),
                    ItemsApp(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children:const [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 66,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/my_profile.jfif'),
            ),
          ),
          NameProfile()
        ],
      ),
    );
  }
}

class NameProfile extends StatelessWidget {
  const NameProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "حسین زند",
            style: kStyleTitleText,
          ),
          Text(
            "برنامه نویس اپلیکیشن",
            style: kStyleText,
          ),
        ],
      ),
    );
  }
}

class ItemsApp extends StatelessWidget {
  const ItemsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Item(
            title: "شماره تماس",
            text: "**** 147 937 98+",
            icon: Icons.phone,
            cardColor: Colors.blue,
            iconColor: Colors.white,
          ),
          Item(
            title: "نشانی الکترونیکی",
            text: "zand.private@gmail.com",
            icon: Icons.email,
            cardColor: Colors.orange,
            iconColor: Colors.white,
          ),
          Item(
            title: "مدرک تحصیلی",
            text: "مهندسی تکنولوژی نرم افزار",
            icon: Icons.book,
            cardColor: Colors.deepPurpleAccent,
            iconColor: Colors.white,
          ),
          Item(
            title: "سابقه کاری",
            text: "5 سال سابقه کاری در شرکت ****'\n"
                "3 سال سابقه مدیریت آموزشگاه فنی متفکران آینده ساز",
            icon: Icons.work,
            cardColor: Colors.green,
            iconColor: Colors.white,
          ),
          Item(
            title: "نشانی",
            text: "کشور ایران ، استان قزوین",
            icon: Icons.place,
            cardColor: Colors.redAccent,
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
