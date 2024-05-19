import 'dart:ffi';

import 'package:bukos3/pdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'data.dart';
import 'package:dotted_line/dotted_line.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

const _maincolor = Color(0xff62BEC1);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class _BookingState extends State<Booking> {
  int indexpage = 0;
  final List<Formulir> _form = [
    Formulir(
        fname: 'ID Card',
        ftype: 'Open',
        fformat: false,
        fdevice: 'Open Camera'),
    Formulir(
        fname: 'Selfie with ID',
        ftype: 'Open',
        fformat: false,
        fdevice: 'Open Camera'),
    Formulir(
        fname: 'Family Card',
        ftype: 'Browse',
        fformat: true,
        fdevice: 'Upload Files'),
    Formulir(
        fname: 'Marriage Book',
        ftype: 'Browse',
        fformat: true,
        fdevice: 'Upload Files'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: _maincolor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 55.5, left: 20, right: 20, bottom: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/leftarrowhead.svg',
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn)),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Fill In Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 53.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        indexpage = 0;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: indexpage == 0
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                            width: 20,
                            height: 20,
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: _maincolor,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text('Book',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: indexpage == 0
                                      ? FontWeight.w600
                                      : FontWeight.w300))
                        ],
                      ),
                    ),
                    Container(
                      height: 3,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    InkWell(
                      onTap: () {
                        indexpage = 1;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: indexpage == 1
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                            width: 20,
                            height: 20,
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: _maincolor,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text('Review',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: indexpage == 1
                                      ? FontWeight.w600
                                      : FontWeight.w300))
                        ],
                      ),
                    ),
                    Container(
                      height: 3,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    InkWell(
                      onTap: () {
                        indexpage = 2;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: indexpage == 2
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                            width: 20,
                            height: 20,
                            child: const Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: _maincolor,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text('Pay',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: indexpage == 2
                                      ? FontWeight.w600
                                      : FontWeight.w300))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 1675,
                width: 390,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            color: const Color(0xff79747E),
                            borderRadius: BorderRadius.circular(100)),
                        height: 4,
                        width: 32,
                      ),
                    ),
                    const Text(
                      'Kos Information',
                      style: TextStyle(
                          color: _inputcolor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: _normalcolor)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text:
                                            'Kos Pak Jalu Ketintang Madya\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text:
                                            'Ciputra Office, 25th Floor Mal, Jl.\nMayjen Sungkono No.87-89, Surabaya,\nJawa Timur 60224\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text: 'Kos Type \n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: 'Putra\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text:
                                            'Sun, 28 May 2023 - Tue 27 June 2023\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text:
                                            'Room 1, 1 Guest(s), 30Night(s)\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                  ])),
                              Image.asset(
                                'assets/images/room5.png',
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 8, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _maincolor.withOpacity(0.3)),
                            height: 24,
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/megaphone.svg'),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                    'Kindly note, this booking is for 1 guest only',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Guest Information',
                          style: TextStyle(
                              color: _inputcolor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              fontSize: 14),
                        ),
                        InkWell(
                          onTap: () {
                            indexpage = 3;
                            setState(() {});
                          },
                          child: const Text('Edit',
                              style: TextStyle(
                                  color: _maincolor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  fontSize: 14)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: _normalcolor)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'Full Name\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: 'Pamungkas\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text: 'Phone Number\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: 'Phone number is not filled\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text: 'Gender\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: 'Man\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text: 'Work\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: 'Karyawan\n\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                  ])),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 8, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _maincolor.withOpacity(0.3)),
                            height: 24,
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/error.svg'),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                    'Enter the cellphone number to process the booking',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    RichText(
                        softWrap: true,
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Requirements document\n\n',
                              style: TextStyle(
                                  color: _inputcolor,
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text:
                                  'Complete the following documents for data verification\n\n',
                              style: TextStyle(
                                  color: _inputcolor,
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300)),
                        ])),
                    SizedBox(
                      height: 362,
                      width: 350,
                      child: AlignedGridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        itemCount: _form.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(_form[index].fname),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  width: 167.5,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: _normalcolor, width: 0.5),
                                    color: const Color(0xffE2E2E2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/upload.svg',
                                        height: 24,
                                        width: 24,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        _form[index].fdevice,
                                        style: const TextStyle(
                                            color: _maincolor,
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      if (_form[index].fformat == true)
                                        const Text('Format .doc/pdf',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontSize: 10,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)),
                                      if (_form[index].fformat == true)
                                        const SizedBox(
                                          height: 5,
                                        ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4, horizontal: 15),
                                            decoration: const BoxDecoration(
                                              color: _maincolor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                            ),
                                            child: _form[index].fformat == false
                                                ? const Text(
                                                    'Open',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                : const Text(
                                                    'Browse',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 8, top: 4, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _maincolor.withOpacity(0.3)),
                      height: 24,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/info.svg'),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                              'please prepare original ID card for verification',
                              style: TextStyle(
                                  color: _inputcolor,
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Rental Cost',
                          style: TextStyle(
                              color: _inputcolor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {
                            indexpage = 4;
                            setState(() {});
                          },
                          child: const Text('Edit',
                              style: TextStyle(
                                  color: _maincolor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  fontSize: 14)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: _normalcolor, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Rental costs per month\n',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: 'Paid once a year',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300)),
                              ])),
                              const Text('Rp700.000',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: DottedLine(
                              dashColor: _inputcolor,
                              direction: Axis.horizontal,
                              dashGapColor: Colors.white,
                              dashLength: 4,
                              dashGapLength: 4,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('Cost',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600)),
                              RichText(
                                  textAlign: TextAlign.right,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'Rp 700.000\n',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: 'Per Month',
                                        style: TextStyle(
                                            color: _inputcolor,
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                  ])),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            textAlign: TextAlign.left,
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: 'First Payment Method\n',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                              TextSpan(
                                  text:
                                      'Payment can be upfront or in installments',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300)),
                            ])),
                        GestureDetector(
                          onTap: () {
                            indexpage = 5;
                            setState(() {});
                          },
                          child: const Text('Edit',
                              style: TextStyle(
                                  color: _maincolor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  fontSize: 14)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: _normalcolor, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: 'Down Payment\n',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: '30% of the rental price',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300)),
                          ])),
                          const Text('Rp210.000',
                              style: TextStyle(
                                  color: _inputcolor,
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Price details',
                      style: TextStyle(
                          color: _inputcolor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: _normalcolor, width: 0.5),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Rp510.000',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                            Row(
                              children: [
                                const Text('Total Price',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  width: 4,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/uparrowhead.svg',
                                  height: 18,
                                  width: 18,
                                )
                              ],
                            )
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: _normalcolor, width: 0.5),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'Down Payment\n',
                                      style: TextStyle(
                                          color: _inputcolor,
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: '30% of the rental price',
                                      style: TextStyle(
                                          color: _inputcolor,
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300)),
                                ])),
                                const Text('Rp210.000',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                            const SizedBox(
                              height: 13.5,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Cost',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                Text('Rp210.000',
                                    style: TextStyle(
                                        color: _inputcolor,
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pdata(),
                            ));
                      },
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 139),
                        decoration: const BoxDecoration(
                          color: _maincolor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text('Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    )
                  ], //Column sekunder
                ),
              )
            ], //Column utama
          ),
        )));
  }
}
