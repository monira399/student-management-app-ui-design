import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ui_design/ui/screens/forgot_password_screen1.dart';
import 'package:ui_design/ui/screens/home_screen.dart';
import 'package:ui_design/ui/screens/sign_up_screen_1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.home_sharp,
                        color: Colors.green,
                        size: 50,
                      ),
                      const SizedBox(height: 10),

                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Enter your gmail and password to login',
                      ),

                      const SizedBox(height: 20),

                      // Email Field
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black54,
                          ),
                          hintText: 'Enter your email',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Password Field
                      TextFormField(
                        obscureText: isPasswordHidden,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          hintText: 'Enter your password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(
                          children: [
                            Checkbox(value: rememberMe,
                                activeColor: Colors.green,
                                checkColor: Colors.white,
                                onChanged: (value){
                              setState(() {
                                rememberMe = value!;
                              });
                                }),
                            Text('Remember me')
                          ],
                        ),
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen1()));
                          },
                              child: Text('Forgot Password?'))
                        ],
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.green.withOpacity(0.8)
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                            },
                            child: Text('Login', )),
                      ),
                      const SizedBox(height: 20),
                      RichText(text: TextSpan(
                       children: [
                         TextSpan(
                           text: 'Don\'t have an account?',style: TextStyle(
                           color: Colors.black54
                         )
                         ),
                         TextSpan(
                           text: 'Sign Up', style: TextStyle(
                           color: Colors.green
                         ),
                           recognizer: TapGestureRecognizer()..onTap =() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen1()));
                           }
                         )
                       ]

                      )),
                      SizedBox(height: 15,),
                       Text('------- Or -------', style: TextStyle(color: Colors.grey),),

                      SizedBox(height: 20,),

                      OutlinedButton.icon(onPressed: () {},
                          icon: Icon(Icons.g_mobiledata, size: 40, color: Colors.deepPurple,),
                          label: Text('Login With Google',style:
                            TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black
                            ),)),

                      SizedBox(height: 10,),

                      OutlinedButton.icon(onPressed: () {},
                          icon: Icon(Icons.facebook, size: 28,color: Colors.blue,),
                          label: Text('Login With Facebook',style:
                            TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black
                            ),))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}