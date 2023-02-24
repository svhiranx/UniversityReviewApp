import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:unireview/Screens/home.dart';
import 'package:unireview/Widgets/radioTile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      navigatorKey: App.navigator,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            headline2: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            bodyText1: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade500),
            bodyText2: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade500)),
        primaryColor: Color.fromARGB(255, 14, 60, 110),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      selectedTabScreenContext: (context) {
        if (context != null) {
          App.context = context;
        }
      },
      context,
      controller: _controller,
      screens: [
        Home(),
        Center(
          child: Text('No Implementation Yet'),
        ),
        Center(
          child: Text('No Implementation Yet'),
        ),
        Center(
          child: Text('No Implementation Yet'),
        ),
      ],
      items: [
        PersistentBottomNavBarItem(
            icon: const Icon(
          Icons.home,
          color: Colors.white,
        )),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset('assets/icons/bookmark.svg'),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset('assets/icons/compass.svg'),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset('assets/icons/user.svg'),
        ),
      ],
      confineInSafeArea: true,
      backgroundColor: Color.fromARGB(255, 14, 60, 110),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: false,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style13,
    );
  }
}
