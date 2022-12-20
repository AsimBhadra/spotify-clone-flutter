// ignore_for_file: public_member_api_docs

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';
import 'package:spotify_clone/src/presentation/widgets/widgets.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  bool _disabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your email?",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 8.h),
          TextFormField(
            onChanged: (value) {
              if (EmailValidator.validate(value)) {
                setState(() {
                  _disabled = false;
                });
              }
            },
            cursorColor: AppColors.whiteColor,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 8.h),
          Text(
            "You'll need to confirm this email later.",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 20.h),
          CustomSmallButton(
            text: 'Next',
            onPressed: () {},
            disabled: _disabled,
          ),
        ],
      ),
    );
  }
}
