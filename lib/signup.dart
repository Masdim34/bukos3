// ignore_for_file: unnecessary_import, unused_field

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bukos3/login.dart';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  late TextEditingController _passwordController;
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _confirmPasswordController = TextEditingController();
    _passwordController = TextEditingController();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final bool _isChecked = false;

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 155, right: 155, top: 92, bottom: 16),
                child: Image.asset('assets/images/ibukos.png'),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 99, vertical: 16),
                  child: Expanded(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up\n',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                  color: Color(0xff646464))),
                          TextSpan(
                              text: 'Register to create your account',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 14,
                                  color: Color(0xff646464),
                                  fontFamily: 'roboto'))
                        ])),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 10, top: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Name',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          style: TextStyle(
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color:
                                        _isFocused ? _maincolor : _hintextcolor,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      const BorderSide(color: _maincolor)),
                              focusColor: _maincolor,
                              fillColor:
                                  _isFocused ? _maincolor : _hintextcolor,
                              contentPadding: const EdgeInsets.only(
                                  left: 16, bottom: 15, top: 15),
                              hintText: 'Full Name',
                              hintStyle: TextStyle(color: _hintextcolor)))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 10, top: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Phone Number',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          style: TextStyle(
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color:
                                        _isFocused ? _maincolor : _hintextcolor,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      const BorderSide(color: _maincolor)),
                              focusColor: _maincolor,
                              fillColor:
                                  _isFocused ? _maincolor : _hintextcolor,
                              contentPadding: const EdgeInsets.only(
                                  left: 16, bottom: 15, top: 15),
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(color: _hintextcolor)))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 10, top: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          style: TextStyle(
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color:
                                        _isFocused ? _maincolor : _hintextcolor,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      const BorderSide(color: _maincolor)),
                              focusColor: _maincolor,
                              fillColor:
                                  _isFocused ? _maincolor : _hintextcolor,
                              contentPadding: const EdgeInsets.only(
                                  left: 16, bottom: 15, top: 15),
                              hintText: 'Email Address',
                              hintStyle: TextStyle(color: _hintextcolor))),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 12, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Password',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          style: TextStyle(
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                          controller: _passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color:
                                      _isFocused ? _maincolor : _hintextcolor,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: _maincolor)),
                            focusColor: _maincolor,
                            fillColor: _isFocused ? _maincolor : _hintextcolor,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: _hintextcolor),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 13),
                            suffixIcon: InkWell(
                                onTap: _togglePasswordVisibility,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 15),
                                  child: SvgPicture.asset(
                                    'assets/icons/Eye.svg',
                                    colorFilter: const ColorFilter.mode(
                                        _maincolor, BlendMode.srcIn),
                                  ),
                                )),
                          )),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 12, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Confirm Password',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          style: TextStyle(
                              color: _inputcolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                          controller: _confirmPasswordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color:
                                      _isFocused ? _maincolor : _hintextcolor,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: _maincolor)),
                            focusColor: _maincolor,
                            fillColor: _isFocused ? _maincolor : _hintextcolor,
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: _hintextcolor),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 13),
                            suffixIcon: InkWell(
                                onTap: _togglePasswordVisibility,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 15),
                                  child: SvgPicture.asset(
                                    'assets/icons/Eye.svg',
                                    colorFilter: const ColorFilter.mode(
                                        _maincolor, BlendMode.srcIn),
                                  ),
                                )),
                          )),
                    ]),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 23, right: 24, top: 32),
                    child: Container(
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _maincolor),
                      child: const Center(
                          child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: _normalcolor)),
                    TextSpan(
                        text: 'Log in!',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                        style: const TextStyle(
                            color: _maincolor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700))
                  ])),
                ),
              )
            ]),
      )),
    );
  }
}
