import 'package:flutter/material.dart';
import 'package:unireview/Widgets/UniCard.dart';
import 'package:unireview/Widgets/textFormField.dart';

class BrowseUni extends StatelessWidget {
  BrowseUni({super.key});
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 1,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                child: CustomTextField(
                                    fieldName: 'Searchbar',
                                    textEditingController:
                                        textEditingController,
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
                ]),
              )),
          Flexible(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'MVSH Engineering college ',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'MVSH Engineering college ',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'MVSH Engineering college ',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    UniCard()
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
