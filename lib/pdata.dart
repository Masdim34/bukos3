// ignore_for_file: unnecessary_import, unused_element

import 'dart:io';

import 'package:bukos3/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'tfform.dart';
import 'package:image_picker/image_picker.dart';

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class Pdata extends StatefulWidget {
  const Pdata({super.key});

  @override
  State<Pdata> createState() => _PdataState();
}

class _PdataState extends State<Pdata> {
  File? selfie;
  Future getSelfie() async {
    final ImagePicker picker = ImagePicker();
    final XFile? selfiePicked =
        await picker.pickImage(source: ImageSource.gallery);
    selfie = File(selfiePicked!.path);
    setState(() {});
  }

  File? datadiri;
  Future getData() async {
    final ImagePicker picker = ImagePicker();
    final XFile? dataPicked =
        await picker.pickImage(source: ImageSource.gallery);
    datadiri = File(dataPicked!.path);
    setState(() {});
  }

  int indexpdata = 0;
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  void _onfocusChange() {
    _isFocused = _focusNode.hasFocus;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onfocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onfocusChange);
    _focusNode.dispose();

    super.dispose();
  }

  DateTime? dateTime;

  void _showdatepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  List<Marital?> marital = [
    Marital(pdmarital: 'Married'),
    Marital(pdmarital: 'Single'),
    Marital(pdmarital: 'Divorced'),
  ];
  Marital? choosenValue;

  Gender? selectedValue;
  List<Gender?> gender = [Gender(pdgender: 'Male'), Gender(pdgender: 'Female')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      offset: Offset(0, -1),
                      blurRadius: 3,
                      spreadRadius: 3,
                      color: _normalcolor)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 56, left: 24, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/leftarrowhead.svg',
                        height: 20,
                        width: 20,
                        colorFilter: const ColorFilter.mode(
                            _inputcolor, BlendMode.srcIn),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Book',
                      style: TextStyle(
                          color: _normalcolor.withOpacity(0.6),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      'assets/icons/arrowheadright.svg',
                      height: 14,
                      width: 14,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Personal Data',
                      style: TextStyle(
                          color: _inputcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      'assets/icons/arrowheadright.svg',
                      height: 14,
                      width: 14,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          color: _normalcolor.withOpacity(0.6),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 24, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: 'Personal Data\n',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    fontFamily: 'Roboto')),
                            TextSpan(
                                text: 'Enter your Personal data  below!',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    fontFamily: 'Roboto'))
                          ])),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 53, vertical: 32),
                            child: Image.asset('assets/images/asset1.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Tfform(
                            textCapitalization: TextCapitalization.words,
                            //nama
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            label: pd[0].plabel,
                            hintText: pd[0].plabel,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Tfform(
                            keyboardType: TextInputType.number, //nomor hp
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            label: pd[1].plabel,
                            hintText: pd[1].plabel,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(pd[2].plabel),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                  color: _isFocused ? _maincolor : _normalcolor,
                                )),
                            child: DropdownButton<Gender?>(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: _inputcolor),
                              hint: Text(
                                pd[2].plabel,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    color: _normalcolor),
                              ),
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(12),
                              items: gender
                                  .map<DropdownMenuItem<Gender?>>(
                                      (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(
                                                (e?.pdgender ?? '').toString()),
                                          ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(pd[3].plabel),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                border:
                                    Border.all(color: _normalcolor, width: 1)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dateTime == null
                                      ? pd[3].plabel
                                      : '${dateTime?.day}-${dateTime?.month}-${dateTime?.year}',
                                  style: TextStyle(
                                    fontWeight: dateTime == null
                                        ? FontWeight.w500
                                        : FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    color: dateTime == null
                                        ? _normalcolor
                                        : _inputcolor,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _showdatepicker();
                                  },
                                  child: SvgPicture.asset(
                                      'assets/icons/calendar.svg'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Tfform(
                            //kota
                            textCapitalization: TextCapitalization.words,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            label: pd[4].plabel,
                            hintText: pd[4].plabel,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Tfform(
                            //provinsi
                            textCapitalization: TextCapitalization.words,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                            label: pd[5].plabel,
                            hintText: pd[5].plabel,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(pd[6].plabel),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                  color: _isFocused ? _maincolor : _normalcolor,
                                )),
                            child: DropdownButton<Marital?>(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: _inputcolor),
                              hint: Text(pd[6].plabel,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: _normalcolor)),
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(12),
                              items: marital
                                  .map<DropdownMenuItem<Marital?>>((e) =>
                                      DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                            (e?.pdmarital ?? '').toString()),
                                      ))
                                  .toList(),
                              value: choosenValue,
                              onChanged: (value) {
                                setState(() {
                                  choosenValue = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 24, right: 24, bottom: 20),
                      child: Text('Upload Your Data',
                          style: TextStyle(
                              color: _inputcolor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              fontSize: 14)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            dashPattern: const [6, 3, 6, 3],
                            radius: const Radius.circular(3.35),
                            child: datadiri != null
                                ? SizedBox(
                                    width: 153,
                                    height: 117,
                                    child: Image.file(
                                      datadiri!,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Container(
                                    width: 153,
                                    height: 117,
                                    color: const Color(0xff9496A1)
                                        .withOpacity(0.2),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () async {
                                              await getData();
                                            },
                                            child: SvgPicture.asset(
                                                'assets/icons/uploadicon.svg')),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          pdt[0].pdn,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Roboto',
                                              color: _normalcolor,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text('Format: JPEG, PNG, WEBP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Roboto',
                                                color: _normalcolor,
                                                fontSize: 8))
                                      ],
                                    ),
                                  ),
                          ),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            dashPattern: const [6, 3, 6, 3],
                            radius: const Radius.circular(3.35),
                            child: selfie != null
                                ? SizedBox(
                                    width: 153,
                                    height: 117,
                                    child: Image.file(
                                      selfie!,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Container(
                                    width: 153,
                                    height: 117,
                                    color: const Color(0xff9496A1)
                                        .withOpacity(0.2),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () async {
                                              await getSelfie();
                                            },
                                            child: SvgPicture.asset(
                                                'assets/icons/uploadicon.svg')),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          pdt[1].pdn,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Roboto',
                                              color: _normalcolor,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text('Format: JPEG, PNG, WEBP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Roboto',
                                                color: _normalcolor,
                                                fontSize: 8))
                                      ],
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 24, left: 24, right: 24, bottom: 27),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Payment(),
                              ));
                        },
                        child: Container(
                          height: 44,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 98),
                          decoration: const BoxDecoration(
                            color: _maincolor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text('Proceed to payment',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )
                  ], //column utama
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
