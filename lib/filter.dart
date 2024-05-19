import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const _maincolor = Color(0xff62BEC1);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int indexshort = 0;
  int indextime = 0;
  int indextype = 0;

  List<int> numberList = [];
  List<bool> boxStates = List.generate(9, (index) => false);
  void toggleBoxState(int index) {
    setState(() {
      boxStates[index] = !boxStates[index];
      if (boxStates[index]) {
        numberList.add(index);
      } else {
        numberList.remove(index);
      }
    });
  }

  List<int> roomList = [];
  List<bool> roomStates = List.generate(9, (index) => false);
  void toggleRoomState(int index) {
    setState(() {
      roomStates[index] = !roomStates[index];
      if (roomStates[index]) {
        roomList.add(index);
      } else {
        roomList.remove(index);
      }
    });
  }

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
                children: [
                  InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/icons/cross.svg')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 125),
                    child: Center(
                      child: Text('Filter',
                          style: TextStyle(
                              fontSize: 16,
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text('Reset',
                        style: TextStyle(
                            color: _maincolor,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 16),
              child: Text('Sort by',
                  style: TextStyle(
                      color: _inputcolor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 130),
              child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  axisDirection: AxisDirection.down,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    InkWell(
                      onTap: () {
                        indexshort = 0;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indexshort == 0 ? _maincolor : Colors.white,
                          border: Border.all(
                              color:
                                  indexshort == 0 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Paling sesuai',
                            style: TextStyle(
                                color: indexshort == 0
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indexshort = 1;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indexshort == 1 ? _maincolor : Colors.white,
                          border: Border.all(
                              color:
                                  indexshort == 1 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/yellowstar.svg'),
                            Text(' 4 Ke atas',
                                style: TextStyle(
                                    color: indexshort == 1
                                        ? Colors.white
                                        : _normalcolor,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indexshort = 2;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indexshort == 2 ? _maincolor : Colors.white,
                          border: Border.all(
                              color:
                                  indexshort == 2 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Highest Price',
                            style: TextStyle(
                                color: indexshort == 2
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indexshort = 3;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indexshort == 3 ? _maincolor : Colors.white,
                          border: Border.all(
                              color:
                                  indexshort == 3 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Lowest Price',
                            style: TextStyle(
                                color: indexshort == 3
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 12),
              child: Text('Payment Time',
                  style: TextStyle(
                      color: _inputcolor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 90),
              child: StaggeredGrid.count(
                  crossAxisCount: 3,
                  axisDirection: AxisDirection.down,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    InkWell(
                      onTap: () {
                        indextime = 0;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indextime == 0 ? _maincolor : Colors.white,
                          border: Border.all(
                              color: indextime == 0 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Daily',
                            style: TextStyle(
                                color: indextime == 0
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indextime = 1;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indextime == 1 ? _maincolor : Colors.white,
                          border: Border.all(
                              color: indextime == 1 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Weekly',
                            style: TextStyle(
                                color: indextime == 1
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indextime = 2;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indextime == 2 ? _maincolor : Colors.white,
                          border: Border.all(
                              color: indextime == 2 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Monthly',
                            style: TextStyle(
                                color: indextime == 2
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indextime = 3;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indextime == 3 ? _maincolor : Colors.white,
                          border: Border.all(
                              color: indextime == 3 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Per 3 Bulan',
                            style: TextStyle(
                                color: indextime == 3
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indextime = 4;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indextime == 4 ? _maincolor : Colors.white,
                          border: Border.all(
                              color: indextime == 4 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Per 6 Bulan',
                            style: TextStyle(
                                color: indextime == 4
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        indextime = 5;
                        setState(() {});
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: indextime == 5 ? _maincolor : Colors.white,
                          border: Border.all(
                              color: indextime == 5 ? _maincolor : _normalcolor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Yearly',
                            style: TextStyle(
                                color: indextime == 5
                                    ? Colors.white
                                    : _normalcolor,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 16),
              child: Text('House Boarding Type',
                  style: TextStyle(
                      color: _inputcolor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      fontSize: 14)),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8, left: 20, right: 100),
                child: StaggeredGrid.count(
                    crossAxisCount: 3,
                    axisDirection: AxisDirection.down,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      InkWell(
                        onTap: () {
                          indextype = 0;
                          setState(() {});
                        },
                        child: Container(
                          constraints:
                              const BoxConstraints(maxWidth: double.infinity),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: indextype == 0 ? _maincolor : Colors.white,
                            border: Border.all(
                                color:
                                    indextype == 0 ? _maincolor : _normalcolor,
                                width: 0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('Putra',
                              style: TextStyle(
                                  color: indextype == 0
                                      ? Colors.white
                                      : _normalcolor,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          indextype = 1;
                          setState(() {});
                        },
                        child: Container(
                          constraints:
                              const BoxConstraints(maxWidth: double.infinity),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: indextype == 1 ? _maincolor : Colors.white,
                            border: Border.all(
                                color:
                                    indextype == 1 ? _maincolor : _normalcolor,
                                width: 0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('Putri',
                              style: TextStyle(
                                  color: indextype == 1
                                      ? Colors.white
                                      : _normalcolor,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          indextype = 2;
                          setState(() {});
                        },
                        child: Container(
                          constraints:
                              const BoxConstraints(maxWidth: double.infinity),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: indextype == 2 ? _maincolor : Colors.white,
                            border: Border.all(
                                color:
                                    indextype == 2 ? _maincolor : _normalcolor,
                                width: 0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('Campuran',
                              style: TextStyle(
                                  color: indextype == 2
                                      ? Colors.white
                                      : _normalcolor,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ])),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 20,
              ),
              child: Text(
                'Price',
                style: TextStyle(
                    color: _inputcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  width: 170.5,
                  height: 37,
                  decoration: BoxDecoration(
                      color: const Color(0xffF3F4F8),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignInside,
                          color: const Color(0xffA1A4A4),
                          width: 0.1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.25),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Lowest Price',
                            hintStyle:
                                const TextStyle(color: Color(0xffA1A4A4)),
                            icon: SvgPicture.asset(
                              'assets/icons/rp.svg',
                              colorFilter: const ColorFilter.mode(
                                  Color(0xff000000), BlendMode.srcIn),
                            ))),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Container(
                  width: 170.5,
                  height: 37,
                  decoration: BoxDecoration(
                      color: const Color(0xffF3F4F8),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignInside,
                          color: const Color(0xffA1A4A4),
                          width: 0.1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.25),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Highest Price',
                            hintStyle:
                                const TextStyle(color: Color(0xffA1A4A4)),
                            icon: SvgPicture.asset(
                              'assets/icons/rp.svg',
                              colorFilter: const ColorFilter.mode(
                                  Color(0xff000000), BlendMode.srcIn),
                            ))),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 20,
              ),
              child: Text(
                'Shared Facilities',
                style: TextStyle(
                    color: _inputcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
              child: StaggeredGrid.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(0);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(0)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(0)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/Wifi.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(0)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Wi-Fi',
                                    style: TextStyle(
                                        color: numberList.contains(0)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(1);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(1)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(1)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/car.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(1)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Car Park',
                                    style: TextStyle(
                                        color: numberList.contains(1)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(2);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(2)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(2)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/moped.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(2)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Motor Park',
                                    style: TextStyle(
                                        color: numberList.contains(2)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(3);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(3)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(3)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/kitchen.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(3)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Kitchen',
                                    style: TextStyle(
                                        color: numberList.contains(3)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(4);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(4)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(4)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/mesincuci.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(4)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Laundry',
                                    style: TextStyle(
                                        color: numberList.contains(4)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(5);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(5)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(5)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/mosque.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(5)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Mosque',
                                    style: TextStyle(
                                        color: numberList.contains(5)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(6);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(6)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(6)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/tv.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(6)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Television',
                                    style: TextStyle(
                                        color: numberList.contains(6)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(7);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(7)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(7)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/kulkas.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(7)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Fridge',
                                    style: TextStyle(
                                        color: numberList.contains(7)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleBoxState(8);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: numberList.contains(8)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: numberList.contains(8)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/sofa.svg',
                                    colorFilter: ColorFilter.mode(
                                        numberList.contains(8)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Sofa',
                                    style: TextStyle(
                                        color: numberList.contains(8)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 20,
              ),
              child: Text(
                'Shared Facilities',
                style: TextStyle(
                    color: _inputcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
              child: StaggeredGrid.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(0);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(0)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(0)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/shower.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(0)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Bathroom',
                                    style: TextStyle(
                                        color: roomList.contains(0)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(1);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(1)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(1)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/fan.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(1)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Fan',
                                    style: TextStyle(
                                        color: roomList.contains(1)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(2);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(2)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(2)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/tv.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(2)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Television',
                                    style: TextStyle(
                                        color: roomList.contains(2)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(3);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(3)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(3)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/desk.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(3)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Desk',
                                    style: TextStyle(
                                        color: roomList.contains(3)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(4);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(4)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(4)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/window.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(4)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Window',
                                    style: TextStyle(
                                        color: roomList.contains(4)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(5);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(5)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(5)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/ac.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(5)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'AC',
                                    style: TextStyle(
                                        color: roomList.contains(5)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(6);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(6)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(6)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/lemari.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(6)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Cupboard',
                                    style: TextStyle(
                                        color: roomList.contains(6)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                            onTap: () {
                              toggleRoomState(7);
                            },
                            child: Container(
                              height: 80,
                              width: 108.67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: roomList.contains(7)
                                      ? _maincolor
                                      : Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: roomList.contains(7)
                                          ? _maincolor
                                          : _normalcolor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/kulkas.svg',
                                    colorFilter: ColorFilter.mode(
                                        roomList.contains(7)
                                            ? Colors.white
                                            : _normalcolor,
                                        BlendMode.srcIn),
                                  ),
                                  Text(
                                    'Fridge',
                                    style: TextStyle(
                                        color: roomList.contains(7)
                                            ? Colors.white
                                            : _normalcolor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 84.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _maincolor,
                    ),
                    child: const Center(
                      child: Text(
                        'Show 54 Boarding House',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
