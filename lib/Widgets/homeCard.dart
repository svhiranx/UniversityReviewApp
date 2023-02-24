import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:unireview/Widgets/radioTile.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          isDismissible: true,
          useRootNavigator: true,
          barrierColor: Colors.transparent,
          context: context,
          builder: (context) {
            return ChangeNotifierProvider(
              create: (context) => RadioSelect(),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sort By',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            CloseButton()
                          ],
                        ),
                        Divider(),
                        RadioTile(
                            iconPath: 'assets/images/education.png',
                            text: 'Bachelor of Technology',
                            value: 1),
                        RadioTile(
                            iconPath: 'assets/images/sketch.png',
                            text: 'Bachelor of Architecture',
                            value: 2),
                        RadioTile(
                            iconPath: 'assets/images/pharmacy.png',
                            text: 'Pharmacy',
                            value: 3),
                        RadioTile(
                            iconPath: 'assets/images/balance.png',
                            text: 'Law',
                            value: 4),
                        RadioTile(
                            iconPath: 'assets/images/management.png',
                            text: 'Management',
                            value: 5)
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/college.png')),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: EdgeInsets.symmetric(
            vertical: height * 0.01, horizontal: width * 0.08),
        child: Stack(
          children: [
            SizedBox(
              height: 140,
              child: Align(
                alignment: Alignment.bottomRight,
                child: RichText(
                  text: TextSpan(
                      text: '+126 ',
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Colleges',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.normal))
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Top Colleges',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    wordSpacing: 3),
                              ),
                            )
                          ]),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
