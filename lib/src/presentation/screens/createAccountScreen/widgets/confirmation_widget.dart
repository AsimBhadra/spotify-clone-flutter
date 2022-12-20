// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';
import 'package:spotify_clone/src/presentation/widgets/widgets.dart';

class ConfirmationWidget extends StatefulWidget {
  const ConfirmationWidget({super.key});

  @override
  State<ConfirmationWidget> createState() => _ConfirmationWidgetState();
}

class _ConfirmationWidgetState extends State<ConfirmationWidget> {
  bool termsOfUse = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your name?",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 8.h),
          TextFormField(
            onChanged: (value) {},
            cursorColor: AppColors.whiteColor,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 8.h),
          Text(
            'This appears on your Spotify profile.',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 10.h),
          const Divider(
            color: AppColors.whiteColor,
            thickness: 0.75,
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                    decoration: const BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Text(
                      'REQUIRED',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                          ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Text(
                        'I agree to the Spotify Terms of Use.',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Checkbox(
                fillColor: MaterialStateProperty.all(AppColors.greenColor),
                checkColor: AppColors.blackColor,
                value: termsOfUse,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {
                    termsOfUse = value!;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Text(
            'Terms of Use',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.greenColor,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 15.h),
          Text(
            "By tapping 'Create Account', you agree to Spotify Privacy Policy.",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 15.h),
          Text(
            'Privacy Policy',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.greenColor,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                'Please send me news and offers from Spotify.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const Spacer(),
              Checkbox(
                fillColor: MaterialStateProperty.all(AppColors.greenColor),
                checkColor: AppColors.blackColor,
                value: termsOfUse,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {
                    termsOfUse = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Share my registration data with Spotify's content\nproviders for marketing purposes.",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const Spacer(),
              Checkbox(
                fillColor: MaterialStateProperty.all(AppColors.greenColor),
                checkColor: AppColors.blackColor,
                value: termsOfUse,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {
                    termsOfUse = value!;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 70.h,
          ),
          CustomSmallButton(
            text: 'Create account',
            onPressed: () {},
            disabled: !termsOfUse,
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text(
              'PROTECED BY RECAPTCHA',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.greyColor,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
