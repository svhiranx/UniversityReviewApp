import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:unireview/Screens/collegePage.dart';

class UniCard extends StatelessWidget {
  const UniCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.31,
      width: width * 0.9,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(context,
                screen: CollegePage(), withNavBar: false);
          },
          child: Stack(
            children: [
              Column(
                children: [
                  Flexible(
                      flex: 7,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/ghjk.png'))),
                        padding: const EdgeInsets.only(top: 10),
                        child: Stack(
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MaterialButton(
                                    color: Colors.white,
                                    shape: const CircleBorder(),
                                    child: const Icon(Icons.share),
                                    onPressed: () {},
                                  ),
                                  MaterialButton(
                                    color: Colors.white,
                                    shape: const CircleBorder(),
                                    child: const Icon(Icons.bookmark_border),
                                    onPressed: () {},
                                  )
                                ]),
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 9,
                      fit: FlexFit.tight,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'GHJK Engineering college',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                                              style: TextStyle(fontSize: 11),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.green.shade500,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5))),
                                          padding: const EdgeInsets.all(5),
                                          child: Row(
                                            children: const [
                                              Text(
                                                '4.3 ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 14, 60, 110),
                                                minimumSize:
                                                    const Size(20, 25)),
                                            onPressed: () {},
                                            child: const Text(
                                              'Apply Now',
                                              style: TextStyle(fontSize: 11),
                                            )),
                                        Spacer()
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.thumb_up),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'More than 1000+ students have been placed',
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.remove_red_eye_outlined),
                                    Text(
                                      '468+',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
