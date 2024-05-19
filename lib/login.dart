import 'package:bukos3/forgotpw.dart';
import 'package:bukos3/otp.dart';
import 'package:bukos3/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _maincolor = Color(0xff62BEC1);
var _hintextcolor = const Color(0xffE5E5E5);
var _normalcolor = const Color(0xff646464);
var _inputcolor = const Color(0xff000000);

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

  bool _isChecked = false;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 155, right: 155, top: 67, bottom: 16),
                child: Image.asset('assets/images/ibukos.png'),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 99, vertical: 16),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Welcome to ibukos\n',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Color(0xff646464))),
                        TextSpan(
                            text: 'Log in to get started',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 14,
                                color: Color(0xff646464),
                                fontFamily: 'roboto'))
                      ]))),
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
                              hintStyle: TextStyle(color: _hintextcolor)))
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      side: const BorderSide(color: _maincolor),
                      splashRadius: 0,
                      fillColor: const MaterialStatePropertyAll(_maincolor),
                      checkColor: _maincolor,
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Text('Remember me',
                        style: TextStyle(
                            fontFamily: 'Roboto', color: _normalcolor)),
                    const SizedBox(
                      width: 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Forgotpw(),
                            ));
                      },
                      child: const Text('Forgot password?',
                          style: TextStyle(
                              fontFamily: 'Roboto', color: _maincolor)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Otp(),
                      ));
                },
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
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 0, left: 24, right: 24, top: 32),
                child: Stack(children: [
                  Divider(color: _normalcolor, thickness: 1),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.white,
                      child: Text('or continue with'),
                    ),
                  )
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffF0F0F0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 32),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/gugel.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Google')
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 34,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffF0F0F0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 32),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/fb.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Facebook')
                            ]),
                      ),
                    ),
                  )
                ]),
              ),
              Center(
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Don't have any account? ",
                      style: TextStyle(color: _normalcolor)),
                  TextSpan(
                      text: 'Sign up!',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ));
                        },
                      style: const TextStyle(
                          color: _maincolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700))
                ])),
              ),
              SizedBox(
                height: 25,
              )
            ]),
      )),
    );
  }
}
