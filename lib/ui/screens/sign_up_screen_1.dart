import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({super.key});

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  bool rememberMe = false;
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: SizedBox(
                width: 380,
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
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Create a new account with details ',
                      ),

                      const SizedBox(height: 20),

                      //Name Field
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.black54,
                          ),
                          hintText: 'Name',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Email Field
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black54,
                          ),
                          hintText: 'Email Address',
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
                          hintText: 'Password',
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
                      //Confirm Password
                      TextFormField(
                        obscureText: isPasswordHidden,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          hintText: 'Confirm Password',
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

                      SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor: Colors.green.withOpacity(0.8)
                            ),
                            onPressed: () {
                            },
                            child: Text('Sign Up', )),
                      ),
                      const SizedBox(height: 20),
                      RichText(text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Already have an account?',style: TextStyle(
                                color: Colors.black54
                            )
                            ),
                            TextSpan(
                                text: 'Login', style: TextStyle(
                                color: Colors.green,
                            ),
                              recognizer: TapGestureRecognizer()..onTap =(){
                                  Navigator.pop(context);
                            }
                            ),
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