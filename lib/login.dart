import 'package:flutter/material.dart';
import 'package:projectify/widgets/img_tile.dart';
import 'constraints.dart';
import 'widgets/textfield.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'setscreens/introscreen.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';

  final bool _isPasswordVisible = false;

  void _submitForm() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();

    if (_isLogin) {
      print(
          'Logging in with email: $_enteredEmail, password: $_enteredPassword');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TutorialScreen()),
      );
    } else {
      print(
          'Signing up with email: $_enteredEmail, password: $_enteredPassword');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        color: Colors.black54,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: 200,
                    child: const Text(
                      'Login page',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GlassmorphicContainer(
                      width: 400,
                      height: 450,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.1),
                      ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.5),
                          Color(0xFFFFFFFF).withOpacity(0.5),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _form,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.asset(
                                  'assets/images/user.png',
                                  height: 60,
                                  width: 60,
                                  color: Colors.white,
                                ),
                                LoginField(
                                  obscureText: false,
                                  hintText: 'Email',
                                  icon: Icon(Icons.email),
                                  textchecker: (value) {
                                    if (value == null ||
                                        value.trim().isEmpty ||
                                        !value.contains('@')) {
                                      return 'Please enter a valid email address.';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _enteredEmail = value!;
                                  },
                                ),
                                const SizedBox(height: 20),
                                LoginField(
                                  icon: const Icon(Icons.lock),
                                  hintText: 'Password',
                                  textchecker: (value) {
                                    if (value == null ||
                                        value.trim().length < 6) {
                                      return 'Password must be at least 6 characters long.';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _enteredPassword = value!;
                                  },
                                  obscureText: !_isPasswordVisible,
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: _submitForm,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: bgColor,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                  ),
                                  child: Text(_isLogin ? 'Login' : 'Signup'),
                                ),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isLogin = !_isLogin;
                                    });
                                  },
                                  child: Text(
                                    _isLogin
                                        ? 'Create an account'
                                        : 'I already have an account',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      splashColor: Colors.white10,
                                      child: SquareTile(
                                          imagePath:
                                              'assets/images/google.png'),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      splashColor: Colors.white10,
                                      child: SquareTile(
                                          imagePath:
                                              'assets/images/microsoft.png'),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      splashColor: Colors.white10,
                                      child: SquareTile(
                                          imagePath: 'assets/images/git.png'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
