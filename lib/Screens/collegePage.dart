import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:unireview/Screens/Tabs/aboutCollege.dart';
import 'package:unireview/Screens/Tabs/hostelFacility.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({super.key});

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  static const List<Tab> _tabs = [
    const Tab(
        child: const Text(
      'About college',
    )),
    const Tab(text: 'Hostel facility'),
    const Tab(text: 'Q & A'),
    const Tab(text: 'Events'),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(14, 60, 110, 0.9),
        toolbarHeight: height * 0.1,
        automaticallyImplyLeading: false,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.blue,
                    )),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                    heroTag: null,
                    elevation: 0,
                    backgroundColor: Colors.white,
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.bookmark_outline_outlined,
                      color: const Color.fromRGBO(14, 60, 110, 0.9),
                    )),
              ),
            ]),
      ),
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/ghjk2.png'))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: height * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      'GHJK Engineering college',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                        softWrap: true,
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            FittedBox(
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                padding: const EdgeInsets.all(10),
                                child: Column(children: const [
                                  Text(
                                    '4.3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Card(
                    child: Container(
                      color: Colors.grey.shade200,
                      child: TabBar(
                        indicatorColor: Color.fromRGBO(14, 60, 110, 0.9),
                        labelPadding: EdgeInsets.all(0),
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                        tabs: _tabs,
                        controller: _tabController,
                      ),
                    ),
                  ),
                )
              ];
            },
            body: Container(
              child: TabBarView(controller: _tabController, children: [
                AboutCollege(),
                HostelFacility(),
                AboutCollege(),
                AboutCollege()
              ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  backgroundColor: Color.fromRGBO(14, 60, 110, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  heroTag: null,
                  child: Text(
                    'Apply Now',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
