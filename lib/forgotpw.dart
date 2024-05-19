import 'package:bukos3/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _inputcolor = const Color(0xff000000);

class Forgotpw extends StatefulWidget {
  const Forgotpw({super.key});

  @override
  State<Forgotpw> createState() => _ForgotpwState();
}

class _ForgotpwState extends State<Forgotpw> {
  bool _obscureText = true;
  late TextEditingController _passwordController;
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                    top: 74, left: 24, right: 24, bottom: 20),
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
                          child:
                              SvgPicture.asset('assets/icons/ArrowLeft.svg')),
                      const SizedBox(
                        width: 55,
                      ),
                      const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                            fontFamily: 'Roboto'),
                      )
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
                      const Text('New Password',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          controller: _passwordController,
                          obscureText: _obscureText,
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
                            fillColor: _isFocused ? _maincolor : _hintextcolor,
                            hintText: 'New Password',
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
                      const Text('Confirm New Password',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                          controller: _confirmPasswordController,
                          obscureText: _obscureText,
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
                            fillColor: _isFocused ? _maincolor : _hintextcolor,
                            hintText: 'Confirm New Password',
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
                        'Continue',
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
