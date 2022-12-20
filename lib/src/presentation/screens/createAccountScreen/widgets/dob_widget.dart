// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';
import 'package:spotify_clone/src/presentation/widgets/widgets.dart';

class DOBWidget extends StatefulWidget {
  const DOBWidget({super.key});

  @override
  State<DOBWidget> createState() => _DOBWidgetState();
}

class _DOBWidgetState extends State<DOBWidget> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your date of birth?",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 8.h),
          DatePickerWidget(
            initialDate: DateTime.now(),
            dateFormat: 'MMM-dd-yyyy',
            onChange: (dateTime, list) {
              setState(() {
                selectedDate = dateTime;
              });
            },
            pickerTheme: DateTimePickerTheme(
              backgroundColor: AppColors.blackColor,
              dividerColor: AppColors.whiteColor,
              itemTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
                    color: AppColors.whiteColor,
                  ),
            ),
          ),
          SizedBox(height: 25.h),
          CustomSmallButton(
            text: 'Next',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
