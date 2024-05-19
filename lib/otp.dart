// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

import 'package:bukos3/home.dart';
import 'package:bukos3/login.dart';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _inputcolor = const Color(0xff000000);

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  int _secondsRemaining = 120; // 2 minutes
  late Timer _timer;
  @override
  void initState() {
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
    _controllers = List.generate(4, (index) => TextEditingController());
    _focusNodes = List.generate(4, (index) => FocusNode());
  }

  @override
  void dispose() {
    _timer.cancel();

    for (var controller in _controllers) {
      controller.dispose();
    } // Dispose controllers

    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = (_secondsRemaining ~/ 60) % 60;
    int seconds = _secondsRemaining % 60;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 74, left: 24, right: 24, bottom: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: SvgPicture.asset('assets/icons/ArrowLeft.svg')),
                  const SizedBox(
                    width: 55,
                  ),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        fontFamily: 'Roboto'),
                  )
                ]),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 41.5),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                            "We sent your code to emperoreyes35@gmail.com \n This code will expired in ",
                        style: TextStyle(
                            color: _inputcolor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w200)),
                    TextSpan(
                        text: '$minutes:${seconds.toString().padLeft(2, '0')}',
                        style: const TextStyle(
                            color: _maincolor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'))
                  ]))),
          Padding(
            padding: const EdgeInsets.only(left: 41.5, right: 41.5, bottom: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: _hintextcolor,
                  ),
                  height: 62,
                  width: 63,
                  child: TextField(
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: _inputcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    onChanged: (value) {
                      if (value.length == 1 && index < 3) {
                        _focusNodes[index].unfocus();
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index + 1]);
                      }
                      if (value.isEmpty && index > 0) {
                        _focusNodes[index].unfocus();
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index - 1]);
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 11),
                      counter: Offstage(), // Hide the counter
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 82, right: 82, bottom: 32),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(fontFamily: 'Roboto', color: _inputcolor),
                    children: <TextSpan>[
                      const TextSpan(text: "Didn't receive code? "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: 'Request Again\n',
                          style: const TextStyle(
                              color: _maincolor, fontWeight: FontWeight.bold)),
                      const TextSpan(text: 'or\n '),
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: 'Change your email address',
                          style: const TextStyle(
                              color: _maincolor, fontWeight: FontWeight.bold))
                    ])),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: _maincolor),
                  child: const Center(
                      child: Text(
                    'Verify',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )),
                )),
          ),
        ]),
      )),
    );
  }
}
