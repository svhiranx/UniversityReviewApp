import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HostelFacility extends StatefulWidget {
  HostelFacility({super.key});

  @override
  State<HostelFacility> createState() => _HostelFacilityState();
}

class _HostelFacilityState extends State<HostelFacility> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                  minWidth: 1,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: const Color.fromRGBO(14, 60, 110, 0.9),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/bedw.png'))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              MaterialButton(
                  minWidth: 1,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromRGBO(14, 60, 110, 0.9),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/bedb.png'))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '3',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
              MaterialButton(
                  minWidth: 1,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromRGBO(14, 60, 110, 0.9),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/bedb.png'))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
              MaterialButton(
                  minWidth: 1,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromRGBO(14, 60, 110, 0.9),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/bedb.png'))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '1',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          items: [
            Container(
              height: 137,
              width: 154,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/hostel.png'))),
            ),
            Container(
              height: 137,
              width: 154,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/hostel.png'))),
            ),
            Container(
              height: 137,
              width: 154,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/hostel.png'))),
            ),
          ],
          carouselController: _controller,
          options: CarouselOptions(
              height: 137,
              enableInfiniteScroll: false,
              viewportFraction: 0.4,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            )
          ].asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 9.0,
                height: 9.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GHJK Engineering Hostel',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: const [
                        Text(
                          '4.3 ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.location_on_outlined),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur ',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Facilities',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/university.png'))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'College in 400mtrs',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bath.png'))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Bathrooms : 2',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
