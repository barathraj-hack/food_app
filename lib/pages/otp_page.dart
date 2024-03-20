import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;
  final String mobileNumber;

  const OtpScreen({
    Key? key,
    required this.verificationId,
    required this.mobileNumber,
  }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var code = "";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150),
          child: Column(
            children: [
              // logo
              Icon(
                Icons.lock,
                size: 120,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 16),

              // message, app slogan
              Text(
                'Food Delivery App',
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              // otp field
              Pinput(
                controller: otpController,
                length: 6,
                showCursor: true,
                defaultPinTheme: PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  textStyle: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onChanged: (value) {
                  code = value;
                },
              ),

              const SizedBox(height: 25),

              // submit otp button
              MyButton(
                onTap: () async {
                  try {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                      verificationId: LoginPage.verify,
                      smsCode: code,
                    );

                    // Sign the user in (or link) with the credential
                    await auth.signInWithCredential(credential);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false);
                  } catch (e) {
                    print('Wrong OTP');
                  }
                },
                text: 'Submit OTP',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
