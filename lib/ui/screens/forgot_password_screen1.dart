import 'package:flutter/material.dart';

class ForgotPasswordScreen1 extends StatefulWidget {
  const ForgotPasswordScreen1({super.key});

  @override
  State<ForgotPasswordScreen1> createState() => _ForgotPasswordScreen1State();
}

class _ForgotPasswordScreen1State extends State<ForgotPasswordScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Forgot Password', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
                ),),
                Text('Enter your email address to receive an otp '),

                SizedBox(height: 20,),
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
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.green.withOpacity(0.8)
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Continue', )),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
