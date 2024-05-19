// ignore_for_file: unused_element

import 'package:bukos3/details.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'data.dart';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Search3 extends StatefulWidget {
  const Search3({super.key});

  @override
  State<Search3> createState() => _Search3State();
}

class _Search3State extends State<Search3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 28),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {},
                      child:
                          SvgPicture.asset('assets/icons/leftarrowhead.svg')),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 238,
                    height: 41,
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F4F8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            strokeAlign: BorderSide.strokeAlignInside,
                            color: const Color(0xffA1A4A4),
                            width: 0.1)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14.25),
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Ketintang, Surabaya',
                              hintStyle:
                                  const TextStyle(color: Color(0xffA1A4A4)),
                              icon: SvgPicture.asset(
                                'assets/icons/search.svg',
                                colorFilter: const ColorFilter.mode(
                                    Color(0xffA1A4A4), BlendMode.srcIn),
                              ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset('assets/icons/Heart.svg',
                        height: 24,
                        width: 24,
                        colorFilter:
                            ColorFilter.mode(_inputcolor, BlendMode.srcIn)),
                  ),
                  SvgPicture.asset(
                    'assets/icons/Message.svg',
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 4),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 0.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff373838), width: 0.5),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/filter.svg'),
                        Text(
                          'Filter',
                          style: TextStyle(
                              fontFamily: 'Roboto', color: _inputcolor),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 313,
                  child: CarouselSlider(
                      items: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff373838), width: 0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Putra',
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: _inputcolor),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff373838), width: 0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Putri',
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: _inputcolor),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            height: 29,
                            width: 90,
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff373838), width: 0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Campuran',
                                softWrap: false,
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: _inputcolor),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            height: 29,
                            width: 95,
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff373838), width: 0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/yellowstar.svg'),
                                  Text(
                                    '  4 Ke atas',
                                    softWrap: false,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: _inputcolor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            height: 29,
                            width: 101,
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff373838), width: 0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Harga termurah',
                                softWrap: false,
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: _inputcolor),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            height: 29,
                            width: 109,
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff373838), width: 0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Harga tertinggi',
                                softWrap: false,
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: _inputcolor),
                              ),
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          viewportFraction: 0.35,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          padEnds: false,
                          disableCenter: true,
                          height: 29,
                          scrollDirection: Axis.horizontal)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 20, bottom: 8),
              child: Text('Found 10 Boarding House',
                  style: TextStyle(
                      color: _inputcolor, fontFamily: 'Roboto', fontSize: 16)),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          height: 235,
                          width: 350,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 1,
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                      'assets/${content[index].profile}'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12,
                                        top: 113,
                                        bottom: 8,
                                        right: 12),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/loc.svg',
                                          height: 12,
                                          width: 12,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          content[index].loc,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 113,
                                    bottom: 8,
                                    right: 12,
                                    left: 265,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/yellowstar.svg'),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                            '${content[index].rate} (${content[index].count})',
                                            style: const TextStyle(
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 2, left: 12, top: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                          maxWidth: double.infinity),
                                      decoration: BoxDecoration(
                                        color: content[index].color,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 2.5),
                                      child: Text(
                                        content[index].gender,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 2),
                                child: Text(content[index].name,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: _inputcolor)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                  left: 12,
                                ),
                                child: Row(
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: '${content[index].disc}\n',
                                          style: const TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                              fontSize: 10)),
                                      TextSpan(
                                          text: content[index].price,
                                          style: const TextStyle(
                                              color: _maincolor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500))
                                    ])),
                                    const SizedBox(
                                      width: 192,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: SvgPicture.asset(
                                        'assets/icons/Heart.svg',
                                        height: 24,
                                        width: 24,
                                        colorFilter: ColorFilter.mode(
                                            _inputcolor, BlendMode.srcIn),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ])),
    );
  }
}
