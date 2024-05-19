// ignore_for_file: unused_import, unused_element

import 'package:bukos3/search3.dart';
import 'package:flutter/material.dart';
import 'Data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search.dart';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Search2 extends StatefulWidget {
  const Search2({super.key});

  @override
  State<Search2> createState() => _Search2State();
}

class _Search2State extends State<Search2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/leftarrowhead.svg')),
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
                            hintStyle:
                                const TextStyle(color: Color(0xffA1A4A4)),
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/loc.svg',
                  width: 15,
                  height: 18,
                  colorFilter:
                      const ColorFilter.mode(_maincolor, BlendMode.srcIn),
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
                  width: 190,
                ),
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/arrowheadright.svg'))
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: BorderDirectional(
                    top: BorderSide(color: Color(0xffd2d4da), width: 0.5),
                    bottom: BorderSide(color: Color(0xffd2d4da), width: 0.25))),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/surabaya.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'All of Surabaya',
                    style: TextStyle(
                        color: _inputcolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  SvgPicture.asset('assets/icons/arrowheadright.svg')
                ]),
          ),
          Container(
              decoration: const BoxDecoration(
                  border: Border.symmetric(
                horizontal: BorderSide(
                  width: 0.25,
                  color: Color(0xffd2d4da),
                ),
              )),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text('POPULAR AREAS IN SURABAYA',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: _inputcolor)),
                  ),
                  SizedBox(
                    height: 101,
                    width: 264,
                    child: Flex(
                        direction: Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Ketintang'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Lidah Wetan'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Gubeng'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4, top: 4),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Dukuh Pakis'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Gubeng'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Unair'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('ITS'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Asrama Haji'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5B5D6B),
                                            width: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            123, 243, 244, 248)),
                                    child: const Text('Poltekkes'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  )
                ],
              )),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.25, color: Color(0xffd2d4da)))),
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 4,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  'ALL LOCALITIES IN SURABAYA, INDONESIA',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: _inputcolor,
                      fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
              width: 380,
              height: 800,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      indexregion = index;
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Search3(),
                            ));
                      });
                    },
                    leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/loc.png')),
                    title: Text(kecamatan[index].region),
                  );
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: kecamatan.length,
              ))
        ],
      ))),
    );
  }
}
