import 'package:flutter/material.dart';
import 'package:contractus/screen/widgets/button_global.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/constant.dart';
import 'client_create_profile.dart';

class ClientOtpVerification extends StatefulWidget {
  const ClientOtpVerification({Key? key}) : super(key: key);

  @override
  State<ClientOtpVerification> createState() => _ClientOtpVerificationState();
}

final _formKey = GlobalKey<FormState>();

class _ClientOtpVerificationState extends State<ClientOtpVerification> {
  final defaultPinTheme = const PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20, color: kNeutralColor, fontWeight: FontWeight.w600),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: kNeutralColor),
        backgroundColor: kDarkWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'Verification',
          style: kTextStyle.copyWith(
              color: kNeutralColor, fontWeight: FontWeight.bold),
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'We’ve the code sent to your email-',
                style: kTextStyle.copyWith(color: kSubTitleColor),
              ),
              Text(
                'shadulislam@gmail.com',
                style: kTextStyle.copyWith(
                    color: kNeutralColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              Pinput(
                defaultPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    border: Border.all(color: kBorderColorTextField),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    border: Border.all(color: kNeutralColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),
              const SizedBox(height: 20.0),
              Text(
                '00:56',
                style: kTextStyle.copyWith(
                    color: kNeutralColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              RichText(
                text: TextSpan(
                  text: 'Didn’t receive code? ',
                  style: kTextStyle.copyWith(color: kSubTitleColor),
                  children: [
                    TextSpan(
                      text: 'Resend Code',
                      style: kTextStyle.copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ButtonGlobalWithoutIcon(
                  buttontext: 'Send',
                  buttonDecoration: kButtonDecoration.copyWith(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ClientCreateProfile(),
                      ),
                    );
                  },
                  buttonTextColor: kWhite),
            ],
          ),
        ),
    );
  }
}
