// ignore_for_file: unused_import, unnecessary_import, unused_element, sort_child_properties_last

import 'package:bukos3/room.dart';
import 'package:bukos3/signup.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final CarouselController _carouselController = CarouselController();
  int indexkamar = 0;
  List<String> assetImage = [
    'assets/images/ckamar1.png',
    'assets/images/ckamar2.png',
    'assets/images/ckamar3.png',
    'assets/images/ckamar4.png',
    'assets/images/ckamar5.png'
  ];
  void onTap(int index) {
    indexkamar = kamar[index].ikamar;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CarouselSlider.builder(
                        carouselController: _carouselController,
                        itemCount: assetImage.length,
                        itemBuilder: (context, index, realIndex) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(assetImage[index]),
                              Container(
                                height: 381,
                                width: 390,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.center,
                                        colors: [
                                          Colors.black.withOpacity(0.9),
                                          Colors.transparent
                                        ]),
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                              ),
                            ],
                          );
                        },
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 381,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 44),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(138, 0, 0, 0),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/leftarrowhead.svg',
                                        colorFilter: const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                        width: 24,
                                        height: 24,
                                      )),
                                ),
                                const SizedBox(
                                  width: 213.6,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(138, 0, 0, 0),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/Heart.svg',
                                        colorFilter: const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                        width: 24,
                                        height: 24,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(138, 0, 0, 0),
                                            shape: BoxShape.circle),
                                        child: SvgPicture.asset(
                                          'assets/icons/share.svg',
                                          colorFilter: const ColorFilter.mode(
                                              Colors.white, BlendMode.srcIn),
                                          width: 24,
                                          height: 24,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 172.5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _maincolor,
                            ),
                            child: const Text(
                              'Putra',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Kos Pak Jalu Ketintang Madya',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/loc.svg',
                                width: 14,
                                height: 14,
                                colorFilter: const ColorFilter.mode(
                                    _maincolor, BlendMode.srcIn),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('Ketintang',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                width: 12,
                              ),
                              SvgPicture.asset('assets/icons/yellowstar.svg'),
                              const SizedBox(
                                width: 3.5,
                              ),
                              const Text('4.8(120)',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 352,
                        height: 70,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Image.asset(
                                    assetImage[index + 1],
                                    height: 70,
                                    width: 78.5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _carouselController.jumpToPage(index + 1);
                                      if (index + 1 == 4) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Signup(),
                                            ));
                                      }

                                      setState(() {});
                                    },
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          '+5',
                                          style: TextStyle(
                                              color: index + 1 == 4
                                                  ? Colors.white
                                                  : Colors.transparent,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Roboto'),
                                        ),
                                      ),
                                      width: 70,
                                      height: 78.5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: index + 1 == 4
                                              ? Colors.black.withOpacity(0.5)
                                              : Colors.transparent),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ratings and Review',
                          style: TextStyle(
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '4.8',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                RatingBar(
                                  initialRating: 4.5,
                                  allowHalfRating: true,
                                  ratingWidget: RatingWidget(
                                      full: SvgPicture.asset(
                                        'assets/icons/ratingstar.svg',
                                      ),
                                      half: SvgPicture.asset(
                                        'assets/icons/ratingstarhalf.svg',
                                      ),
                                      empty: SvgPicture.asset(
                                        'assets/icons/ratingstar.svg',
                                        colorFilter: const ColorFilter.mode(
                                            Color(0xffE5E5E5), BlendMode.srcIn),
                                      )),
                                  itemSize: 12,
                                  itemPadding: const EdgeInsets.only(right: 12),
                                  onRatingUpdate: (value) {},
                                ),
                                const Text(
                                  'From 120 Reviews',
                                  style: TextStyle(
                                      color: _normalcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 39,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    const Text('5'),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 173,
                                      child: LinearProgressIndicator(
                                        backgroundColor:
                                            const Color(0xffE8EBEB),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                _maincolor),
                                        minHeight: 10,
                                        value: 0.9,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('4'),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 173,
                                      child: LinearProgressIndicator(
                                        backgroundColor:
                                            const Color(0xffE8EBEB),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                _maincolor),
                                        minHeight: 10,
                                        value: 0.75,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('3'),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 173,
                                      child: LinearProgressIndicator(
                                        backgroundColor:
                                            const Color(0xffE8EBEB),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                _maincolor),
                                        minHeight: 10,
                                        value: 0.4,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('2'),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 173,
                                      child: LinearProgressIndicator(
                                        backgroundColor:
                                            const Color(0xffE8EBEB),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                _maincolor),
                                        minHeight: 10,
                                        value: 0.1,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('1'),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 173,
                                      child: LinearProgressIndicator(
                                        backgroundColor:
                                            const Color(0xffE8EBEB),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                _maincolor),
                                        minHeight: 10,
                                        value: 0,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 32, bottom: 12),
                          child: Center(
                            child: Text(
                              'See All Reviews',
                              style: TextStyle(
                                  color: _maincolor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 12, bottom: 12),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: _normalcolor, width: 0.5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Shared Facilities',
                            style: TextStyle(
                                color: _inputcolor,
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffE3FBF4),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/Wifi.svg',
                                        width: 24,
                                        height: 24,
                                        colorFilter: const ColorFilter.mode(
                                            _maincolor, BlendMode.srcIn),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Center(
                                        child: Text(
                                      'Wi-Fi',
                                      style: TextStyle(fontSize: 12),
                                    ))
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffE3FBF4),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/car.svg',
                                        width: 24,
                                        height: 24,
                                        colorFilter: const ColorFilter.mode(
                                            _maincolor, BlendMode.srcIn),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Text(
                                      textAlign: TextAlign.center,
                                      'Parking\nArea',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffE3FBF4),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/shower.svg',
                                        width: 24,
                                        height: 24,
                                        colorFilter: const ColorFilter.mode(
                                            _maincolor, BlendMode.srcIn),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Center(
                                        child: Text(
                                      'Bathroom',
                                      style: TextStyle(fontSize: 12),
                                    ))
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffE3FBF4),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/sofa.svg',
                                        width: 24,
                                        height: 24,
                                        colorFilter: const ColorFilter.mode(
                                            _maincolor, BlendMode.srcIn),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Center(
                                        child: Text(
                                      'Sofa',
                                      style: TextStyle(fontSize: 12),
                                    ))
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffE3FBF4),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        'assets/icons/kitchen.svg',
                                        width: 24,
                                        height: 24,
                                        colorFilter: const ColorFilter.mode(
                                            _maincolor, BlendMode.srcIn),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Center(
                                        child: Text(
                                      'Kitchen',
                                      style: TextStyle(fontSize: 12),
                                    )),
                                    const SizedBox(
                                      height: 32,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'See All Facilities',
                            style: TextStyle(color: _maincolor),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text('Location',
                            style: TextStyle(
                                color: _inputcolor,
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 12,
                        ),
                        Stack(
                          children: [
                            Image.asset('assets/images/gps.png'),
                            Positioned(
                              left: 284.75,
                              top: 124,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.black,
                                  ),
                                  child: const Text(
                                    'Open Map',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/icons/locate.svg'),
                            const SizedBox(
                              width: 9,
                            ),
                            const Expanded(
                                child: Text(
                              'Ciputra Office, 25th Floor Mal, Jl. Mayjen Sungkono No.87-89, Surabaya, Jawa Timur 60224',
                              style: TextStyle(color: _inputcolor),
                            ))
                          ],
                        )
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: Text('Nearby Places',
                      style: TextStyle(
                          color: _inputcolor,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                    height: 224,
                    child: ListView.builder(
                      itemCount: facilities.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 52,
                          width: 350,
                          child: ListTile(
                            onTap: () {},
                            title: Text(
                              facilities[index].cnama,
                              style: const TextStyle(
                                  color: _inputcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            subtitle: Text(facilities[index].csub,
                                style: const TextStyle(
                                    color: _inputcolor,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 12)),
                            trailing: Text(facilities[index].cdis,
                                style: const TextStyle(
                                    color: _inputcolor,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 12)),
                            leading: CircleAvatar(
                              maxRadius: 8,
                              backgroundImage: AssetImage(
                                  'assets/${facilities[index].casset}'),
                            ),
                          ),
                        );
                      },
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Text(
                      'Distance shown are based on straight line distances. Actual travel distances may vary',
                      style: TextStyle(
                          color: _normalcolor,
                          fontWeight: FontWeight.w100,
                          fontSize: 10)),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Center(
                  child: Text(
                    'See More On Map',
                    style: TextStyle(color: _maincolor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: _normalcolor, width: 0.5))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Descriptions',
                            style: TextStyle(
                                color: _inputcolor,
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 12,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  color: _normalcolor),
                            ),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                text: 'Read More',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    color: _maincolor))
                          ]),
                        ),
                        const SizedBox(
                          height: 104,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                  blurStyle: BlurStyle.outer,
                  color: _hintextcolor)
            ]),
            height: 83,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Start from:\n',
                        style: TextStyle(
                            color: _normalcolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300)),
                    TextSpan(
                        text: 'IDR 202.650',
                        style: TextStyle(
                            color: _inputcolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
                  ])),
                  const SizedBox(
                    width: 91,
                  ),
                  Image.asset('assets/images/pocket.png'),
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Room(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                          color: _maincolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text('Select Room',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto')),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
