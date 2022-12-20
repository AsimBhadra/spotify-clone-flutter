// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';
import 'package:spotify_clone/src/presentation/widgets/widgets.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _disabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create a password',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 8.h),
          TextFormField(
            onChanged: (value) {
              if (value.length >= 8) {
                setState(() {
                  _disabled = false;
                });
              } else {
                setState(() {
                  _disabled = true;
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
          if (!_disabled)
            const SizedBox()
          else
            Text(
              'Use at least 8 characters.',
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
