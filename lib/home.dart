import 'package:bukos3/search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int _secondsRemaining = 75000;
late Timer _timer;

class _HomeState extends State<Home> {
  @override
  void initState() {
    indexpage = 0;
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    int hours = _secondsRemaining ~/ 3600;
    int minutes = (_secondsRemaining ~/ 60) % 60;
    int seconds = _secondsRemaining % 60;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 187,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: _maincolor),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 35, bottom: 8, right: 303),
                          child: Image.asset('assets/images/ibukostext.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 16, right: 16, bottom: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: Image.asset('assets/images/pp.png'),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: _hintextcolor),
                                        children: const [
                                          TextSpan(
                                              text: 'Good Morning\n',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          TextSpan(
                                              text: 'Pamungkas',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12))
                                        ])),
                                Padding(
                                  padding: const EdgeInsets.only(left: 187),
                                  child: InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/Bell.svg')),
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: 3,
                                      color: _maincolor,
                                      spreadRadius: 0)
                                ],
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: const Color(0xffB2B2B2), width: 0.5),
                                color: Colors.white),
                            child: TextField(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Search(),
                                      ));
                                },
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    suffixIcon: Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                  width: 0.5,
                                                  color: _normalcolor))),
                                      child: InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                            'assets/icons/Heart.svg'),
                                      ),
                                    ),
                                    suffixIconConstraints: const BoxConstraints(
                                        maxHeight: 50, maxWidth: 50),
                                    border: InputBorder.none,
                                    icon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 12, bottom: 12),
                                      child: SvgPicture.asset(
                                          'assets/icons/search.svg'),
                                    ),
                                    hintText:
                                        'Contoh : "Kos Pak Kabul - Surabaya')),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22, left: 16, bottom: 4),
                  child: Text('Top boarding house for you',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: _inputcolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, top: 4, bottom: 6, right: 8),
                  child: CarouselSlider(
                    items: [
                      Image.asset('assets/images/kamar1.png'),
                      Image.asset('assets/images/kamar1.png')
                    ],
                    options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        height: 138,
                        viewportFraction: 0.8,
                        pageSnapping: true,
                        padEnds: false,
                        disableCenter: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 4,
                    left: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Flash Promo   ',
                          style: TextStyle(
                              color: _maincolor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto')),
                      Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: const Color(0xffFFBB00),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                              child: Text(hours.toString().padLeft(2, '0'),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)))),
                      Text(
                        ' : ',
                        style: TextStyle(
                            color: _inputcolor, fontWeight: FontWeight.w600),
                      ),
                      Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: const Color(0xffFFBB00),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                              child: Text(minutes.toString().padLeft(2, '0'),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)))),
                      Text(
                        ' : ',
                        style: TextStyle(
                            color: _inputcolor, fontWeight: FontWeight.w600),
                      ),
                      Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: const Color(0xffFFBB00),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                              child: Text(seconds.toString().padLeft(2, '0'),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)))),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 16),
                        child: InkWell(
                            onTap: () {},
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'See more',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: _inputcolor,
                                      fontWeight: FontWeight.w300),
                                ),
                                SvgPicture.asset(
                                    'assets/icons/arrowheadright.svg')
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    bottom: 6,
                    left: 16,
                  ),
                  child: CarouselSlider(
                      items: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 12),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xff666666),
                                    width: 0.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('assets/images/kamar.png'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/Star.svg'),
                                          const Text(
                                            ' 4.4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(
                                            width: 55,
                                          ),
                                          SvgPicture.asset(
                                              'assets/icons/loc.svg'),
                                          const Text('Surabaya',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, top: 10),
                                  child: Text(
                                    'Kos Pak Jalu Ketintang',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 8),
                                      decoration: BoxDecoration(
                                          color: _maincolor,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Text(
                                        'Putra',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xff1F586F),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text('Rp 800.000',
                                      style: TextStyle(
                                        color: _normalcolor,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            const Color(0xff646464),
                                        decorationThickness: 2,
                                        fontFamily: 'Roboto',
                                        fontSize: 8,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 4, bottom: 8, right: 4),
                                      child: Text('Rp 600.000',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: _maincolor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    SvgPicture.asset(
                                        'assets/icons/bookmark.svg')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          padEnds: false,
                          disableCenter: true,
                          enableInfiniteScroll: true,
                          height: 221,
                          viewportFraction: 0.45)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 4,
                    left: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('You recently viewed   ',
                          style: TextStyle(
                              color: _inputcolor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto')),
                      Padding(
                        padding: const EdgeInsets.only(left: 133, right: 16),
                        child: InkWell(
                            onTap: () {},
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'See more',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: _inputcolor,
                                      fontWeight: FontWeight.w300),
                                ),
                                SvgPicture.asset(
                                    'assets/icons/arrowheadright.svg')
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    bottom: 6,
                    left: 16,
                  ),
                  child: CarouselSlider(
                      items: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 12),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xff666666),
                                    width: 0.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('assets/images/kamar2.png'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/Star.svg'),
                                          const Text(
                                            ' 4.4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(
                                            width: 55,
                                          ),
                                          SvgPicture.asset(
                                              'assets/icons/loc.svg'),
                                          const Text('Surabaya',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, top: 10),
                                  child: Text(
                                    'Kos Bu Sri Gayungan',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: InkWell(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/icons/man.svg',
                                            colorFilter: const ColorFilter.mode(
                                                Color(0xffC16562),
                                                BlendMode.srcIn)),
                                        const Text(
                                          'Putri',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: Color(0xffC16562),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text('Rp 800.000',
                                      style: TextStyle(
                                        color: _normalcolor,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            const Color(0xff646464),
                                        decorationThickness: 2,
                                        fontFamily: 'Roboto',
                                        fontSize: 8,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 4, bottom: 8.82, right: 4),
                                      child: Text('Rp 600.000',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: _maincolor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/Heart.svg',
                                      colorFilter: const ColorFilter.mode(
                                          _maincolor, BlendMode.srcIn),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 12),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xff666666),
                                    width: 0.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('assets/images/kamar.png'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/Star.svg'),
                                          const Text(
                                            ' 4.4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(
                                            width: 55,
                                          ),
                                          SvgPicture.asset(
                                              'assets/icons/loc.svg'),
                                          const Text('Surabaya',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, top: 10),
                                  child: Text(
                                    'Kos Pak Jalu Ketintang',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: InkWell(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/man.svg'),
                                        const Text(
                                          'Putra',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: _maincolor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text('Rp 800.000',
                                      style: TextStyle(
                                        color: _normalcolor,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            const Color(0xff646464),
                                        decorationThickness: 2,
                                        fontFamily: 'Roboto',
                                        fontSize: 8,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 4, bottom: 8.82, right: 4),
                                      child: Text('Rp 600.000',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: _maincolor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/Heart.svg',
                                      colorFilter: const ColorFilter.mode(
                                          _maincolor, BlendMode.srcIn),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          initialPage: 1,
                          padEnds: false,
                          disableCenter: true,
                          enableInfiniteScroll: true,
                          viewportFraction: 0.45)),
                ),
              ]),
        ),
      ),
      bottomNavigationBar: Container(
          height: 68,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 0,
                    color: _maincolor,
                    blurStyle: BlurStyle.outer)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(9), topRight: Radius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  indexpage = 0;
                  setState(() {});
                },
                child: SvgPicture.asset('assets/icons/hometext.svg',
                    colorFilter: ColorFilter.mode(
                        indexpage == 0 ? _maincolor : const Color(0xffB2B2B2),
                        BlendMode.srcIn)),
              ),
              InkWell(
                onTap: () {
                  indexpage = 1;
                  setState(() {});
                },
                child: SvgPicture.asset('assets/icons/activetext.svg',
                    colorFilter: ColorFilter.mode(
                        indexpage == 1 ? _maincolor : const Color(0xffB2B2B2),
                        BlendMode.srcIn)),
              ),
              InkWell(
                onTap: () {
                  indexpage = 2;
                  setState(() {});
                },
                child: SvgPicture.asset('assets/icons/msgtext.svg',
                    colorFilter: ColorFilter.mode(
                        indexpage == 2 ? _maincolor : const Color(0xffB2B2B2),
                        BlendMode.srcIn)),
              ),
              InkWell(
                onTap: () {
                  indexpage = 3;
                  setState(() {});
                },
                child: SvgPicture.asset('assets/icons/profiletext.svg',
                    colorFilter: ColorFilter.mode(
                        indexpage == 3 ? _maincolor : const Color(0xffB2B2B2),
                        BlendMode.srcIn)),
              )
            ],
          )),
    );
  }
}
