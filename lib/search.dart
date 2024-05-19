// ignore_for_file: unused_element

import 'package:bukos3/search2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Data.dart';

bool kotabesar = true;

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool kotabesar = true;
  int indexpage = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return indexpage != 0
        ? Search2()
        : Scaffold(
            resizeToAvoidBottomInset: true,
            body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                                'assets/icons/leftarrowhead.svg')),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 310,
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
                                    hintText: 'Search',
                                    hintStyle: const TextStyle(
                                        color: Color(0xffA1A4A4)),
                                    icon: SvgPicture.asset(
                                      'assets/icons/search.svg',
                                      colorFilter: const ColorFilter.mode(
                                          Color(0xffA1A4A4), BlendMode.srcIn),
                                    ))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/loc.svg',
                          width: 15,
                          height: 18,
                          colorFilter: const ColorFilter.mode(
                              _maincolor, BlendMode.srcIn),
                        ),
                        const SizedBox(
                          width: 13.51,
                        ),
                        Text('Ibukos near me',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: _inputcolor,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(
                          width: 196,
                        ),
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                                'assets/icons/arrowheadright.svg'))
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: Color(0xffD2D4DA),
                                width: 0.5))),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'YOUR RECENT SEARCHES (6) ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: _inputcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('assets/icons/downarrowhead.svg'),
                            const SizedBox(
                              width: 100,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Clear',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: _maincolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff5B5D6B),
                                              width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              123, 243, 244, 248)),
                                      child:
                                          const Text('Kos Pak Jalu Ketintang'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff5B5D6B),
                                              width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              123, 243, 244, 248)),
                                      child: const Text('Kost ud perak'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff5B5D6B),
                                              width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              123, 243, 244, 248)),
                                      child: const Text('Kos Bu Supri Lidah'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff5B5D6B),
                                              width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              123, 243, 244, 248)),
                                      child: const Text('Kos unesa murah'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff5B5D6B),
                                              width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              123, 243, 244, 248)),
                                      child: const Text('Kos uinsa'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff5B5D6B),
                                              width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              123, 243, 244, 248)),
                                      child: const Text('Kos unair b'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: Color(0xffD2D4DA),
                                width: 0.5))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'BASED ON YOUR ACTIVITIES ',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SvgPicture.asset(
                                    'assets/icons/downarrowhead.svg'),
                                const SizedBox(
                                  width: 100,
                                ),
                                const Text(
                                  'Clear',
                                  style: TextStyle(
                                      color: _maincolor, fontFamily: 'Roboto'),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/kosan1.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(
                                            style: const TextStyle(
                                                color: Color(0xff5B5D6B),
                                                fontFamily: 'Roboto'),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      'Kos Pak Jalu Ketintang Madya\n',
                                                  style: TextStyle(
                                                      color: _inputcolor,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              const TextSpan(
                                                  text: 'Putra • ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              const TextSpan(
                                                  text: 'Recently viewed',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300))
                                            ]))
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/kosan2.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(
                                            style: const TextStyle(
                                                color: Color(0xff5B5D6B),
                                                fontFamily: 'Roboto'),
                                            children: [
                                              TextSpan(
                                                  text: 'Kos Indah Asri\n',
                                                  style: TextStyle(
                                                      color: _inputcolor,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              const TextSpan(
                                                  text: 'Putra • ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              const TextSpan(
                                                  text: 'Recently viewed',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300))
                                            ]))
                                  ]),
                            )
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        bottom: 4,
                        left: 20,
                        right: 20,
                      ),
                      child: Text(
                        'ALL CITIES',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: _inputcolor,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 450,
                    width: 400,
                    child: ListView.builder(
                      itemCount: kota.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            indexpage = index;
                            setState(() {});
                          },
                          title: Text(kota[index].city),
                          trailing: Text(kota[index].data),
                          leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/${kota[index].logo}')),
                        );
                      },
                    ),
                  )
                ],
              )),
            ),
          );
  }
}
