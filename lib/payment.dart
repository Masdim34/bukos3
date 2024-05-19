import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'data.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 112),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Choose Your Payment Method\n',
                          style: TextStyle(
                              color: _inputcolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Roboto')),
                      TextSpan(
                          text: 'Loremp ipsum`',
                          style: TextStyle(
                              color: _inputcolor,
                              fontWeight: FontWeight.w200,
                              fontSize: 12,
                              fontFamily: 'Roboto'))
                    ])),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: _hintextcolor,
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            blurStyle: BlurStyle.outer,
                            spreadRadius: 0.1),
                      ], borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 20, bottom: 10),
                              child: Text('Bank Transfer',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontFamily: 'Roboto')),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/bca.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'BCA\n',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Roboto')),
                                        TextSpan(
                                            text: 'Bank transfer',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                fontFamily: 'Roboto'))
                                      ])),
                                    ],
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/bri.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'Bank Bri\n',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Roboto')),
                                        TextSpan(
                                            text: 'Bank transfer',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                fontFamily: 'Roboto'))
                                      ])),
                                    ],
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/bni.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'BNI\n',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Roboto')),
                                        TextSpan(
                                            text: 'Bank transfer',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                fontFamily: 'Roboto'))
                                      ])),
                                    ],
                                  ),
                                  Radio(
                                    value: 3,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Image.asset('assets/images/mandiri.png'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Mandiri\n',
                                          style: TextStyle(
                                              color: _inputcolor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              fontFamily: 'Roboto')),
                                      TextSpan(
                                          text: 'Virtual account',
                                          style: TextStyle(
                                              color: _normalcolor,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              fontFamily: 'Roboto'))
                                    ]))
                                  ]),
                                  Radio(
                                    value: 4,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: _hintextcolor,
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            blurStyle: BlurStyle.outer,
                            spreadRadius: 0.1),
                      ], borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 20, bottom: 10),
                              child: Text('E-Wallet',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontFamily: 'Roboto')),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/dana.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'Dana\n',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Roboto')),
                                        TextSpan(
                                            text: 'Hubungkan akun anda',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                fontFamily: 'Roboto'))
                                      ])),
                                    ],
                                  ),
                                  Radio(
                                    value: 5,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/gopay.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'GoPay\n',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Roboto')),
                                        TextSpan(
                                            text: 'Hubungkan akun anda',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                fontFamily: 'Roboto'))
                                      ])),
                                    ],
                                  ),
                                  Radio(
                                    value: 6,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/ovo.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'OVO\n',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Roboto')),
                                        TextSpan(
                                            text: 'Hubungkan akun anda',
                                            style: TextStyle(
                                                color: _normalcolor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                fontFamily: 'Roboto'))
                                      ])),
                                    ],
                                  ),
                                  Radio(
                                    value: 7,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55.9,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: _hintextcolor,
                              offset: Offset(1, 1),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer,
                              spreadRadius: 0.1),
                        ],
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/money.svg'),
                                  SizedBox(
                                    width: 6.25,
                                  ),
                                  Text('Don’t Miss Out Our Promos'),
                                ],
                              ),
                              Text('Optional')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 48,
                            decoration: BoxDecoration(
                                color: Color(0xffF3F4F8),
                                borderRadius: BorderRadius.circular(6)),
                            child: TextField(
                              textCapitalization: TextCapitalization.characters,
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(
                                  color: _inputcolor,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 13),
                                  suffixIconConstraints: BoxConstraints(
                                      maxHeight: 36, maxWidth: 37),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffD2D4DA)),
                                      child: SvgPicture.asset(
                                          'assets/icons/arrowheadright.svg'),
                                    ),
                                  ),
                                  hintText: 'Insert voucher or promo code',
                                  hintStyle: TextStyle(
                                      color: _normalcolor,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Deposit',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              Text('Rp 300.000',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Booking',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              Text('Rp 150.000',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Admin Fee',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              Text('Rp 10.000',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(
                            height: 0.5,
                            color: _normalcolor.withOpacity(0.2),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: _inputcolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              Text('Rp 360.000',
                                  style: TextStyle(
                                      color: _inputcolor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14))
                            ],
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 400,
                                    width: MediaQuery.sizeOf(context).width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text('your virtual account number',
                                            style: TextStyle(
                                                color: _inputcolor,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16)),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Text('08383138450200087',
                                            style: TextStyle(
                                                color: _maincolor,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24)),
                                        SizedBox(
                                          height: 200,
                                        ),
                                        InkWell(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 123.2),
                                            decoration: BoxDecoration(
                                              color: _maincolor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text('Proceed',
                                                softWrap: false,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16)),
                                          ),
                                          onTap: () async {
                                            Navigator.pop(context);
                                            await showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Ok'))
                                                ],
                                                title: Text('Booking Success!'),
                                                content: Text(
                                                    'Silakan melanjutkan pembayaran untuk verifikasi '),
                                              ),
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 123.2),
                              decoration: BoxDecoration(
                                color: _maincolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text('Book Now',
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
            Container(
              //appbar
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      offset: Offset(0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
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
                    Text(
                      'Personal Data',
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
                    Text(
                      'Payment',
                      style: TextStyle(
                          color: _inputcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
