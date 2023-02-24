import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:unireview/Widgets/UniCard.dart';
import 'package:unireview/Widgets/homeCard.dart';
import 'package:unireview/Widgets/textFormField.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  final TextEditingController textEditingController = TextEditingController();
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Flexible(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 14, 60, 110),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              child: Stack(children: [
                Container(),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        'Find your own way',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Search in 600 colleges around!!',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              child: CustomTextField(
                                  fieldName: 'Searchbar',
                                  textEditingController: textEditingController,
                                  icon: Icon(Icons.search)),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Icon(
                                Icons.mic,
                                color: Color.fromARGB(255, 14, 60, 110),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, right: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.notification_important_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ]),
            )),
        Flexible(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                ],
              ),
            )),
      ],
    );
  }
}
