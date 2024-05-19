// ignore_for_file: unused_element

import 'package:bukos3/bookdetails.dart';
import 'package:bukos3/pdata.dart';
import 'package:bukos3/signup.dart';
import 'package:flutter/material.dart';
import 'package:bukos3/data.dart';
import 'package:flutter_svg/svg.dart';

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

List<Avail> room = [
  Avail(
      aname: 'Room 1',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room1.png',
      available: true),
  Avail(
      aname: 'Room 2',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room2.png',
      available: true),
  Avail(
      aname: 'Room 3',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room3.png',
      available: false),
  Avail(
      aname: 'Room 4',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room4.png',
      available: false),
];
List<Fac> fac = [
  Fac(fac1: 'Single bed', afac: 'assets/icons/fac1.svg'),
  Fac(fac1: '1 Fan', afac: 'assets/icons/fac2.svg'),
  Fac(fac1: '1 Cupboard', afac: 'assets/icons/fac3.svg'),
  Fac(fac1: '1 Desk', afac: 'assets/icons/fac4.svg'),
];

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: _maincolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                height: 109,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 54, bottom: 16, left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/leftarrowhead.svg',
                      height: 24,
                      width: 24,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Kos Pak Jalu Ketintang Madya\n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto')),
                      TextSpan(
                          text: 'Kos Pak Jalu Ketintang Madya\n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Roboto'))
                    ])),
                    const SizedBox(
                      width: 33,
                    ),
                    SvgPicture.asset('assets/icons/Heart.svg',
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn)),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset('assets/icons/share.svg',
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn)),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 16),
            child: Text(
              'Select Room',
              style: TextStyle(
                  color: _inputcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Roboto'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: room.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                Color containerColor = room[index].available
                    ? Colors.transparent
                    : Colors.white.withOpacity(0.7);
                String buttonText =
                    room[index].available ? 'Book Now' : 'Sold Out';
                Color buttonColor = room[index].available
                    ? _maincolor
                    : Colors.pink.withOpacity(0.3);
                Color buttonTextColor =
                    room[index].available ? Colors.white : Colors.red;
                bool isAvailable = room[index].available;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Stack(
                    children: [
                      Container(
                        height: 420,
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: _inputcolor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(room[index].apic),
                            Container(
                                height: 29,
                                padding: const EdgeInsets.only(
                                    left: 8, top: 4, bottom: 4, right: 290),
                                color: _maincolor.withOpacity(0.3),
                                child: Text(
                                  softWrap: false,
                                  room[index].aname,
                                  style: const TextStyle(
                                    color: _inputcolor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                  ),
                                )),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.only(
                                    left: 8, top: 8, bottom: 8),
                                itemCount: fac.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      SvgPicture.asset(fac[index].afac),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(fac[index].fac1)
                                    ],
                                  );
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 8, right: 8, bottom: 12),
                              child: Divider(
                                color: _normalcolor,
                                thickness: 0.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: '${room[index].adisc}\n',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffA1A4A4),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        decoration:
                                            TextDecoration.lineThrough)),
                                TextSpan(
                                    text: room[index].aprice,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: _maincolor,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                    ))
                              ])),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 420,
                        width: 350,
                        color: containerColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, bottom: 12, top: 348),
                        child: InkWell(
                            onTap: isAvailable
                                ? () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Booking()));
                                  }
                                : null,
                            child: Container(
                              width: 334,
                              height: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  buttonText,
                                  style: TextStyle(
                                      color: buttonTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
