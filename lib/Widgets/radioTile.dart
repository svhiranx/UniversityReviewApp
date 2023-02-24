import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:unireview/Screens/browseUni.dart';

class RadioTile extends StatelessWidget {
  RadioTile(
      {super.key,
      required this.iconPath,
      required this.text,
      required this.value});
  String iconPath;
  String text;
  int value;
  @override
  Widget build(BuildContext context) {
    var groupValue = Provider.of<RadioSelect>(context, listen: true).radioVal;
    return ListTile(
      leading: Image.asset(iconPath),
      title: Text(
        text,
        style: TextStyle(fontSize: 15),
      ),
      trailing: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: (value) {
          Provider.of<RadioSelect>(context, listen: false).changeVal(value!);
          PersistentNavBarNavigator.pushNewScreen(
              screen: BrowseUni(), withNavBar: true, App.context);
          Navigator.pop(context);
        },
      ),
    );
  }
}

class RadioSelect with ChangeNotifier {
  int? radioVal;
  void changeVal(int val) {
    radioVal = val;
    notifyListeners();
  }
}

class App {
  static GlobalKey<NavigatorState> navigator = GlobalKey();
  static BuildContext context = navigator.currentContext!;
}
