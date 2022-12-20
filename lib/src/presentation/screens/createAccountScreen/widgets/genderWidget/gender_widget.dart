// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your gender?",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20.h),
          const ChipSelecter(),
        ],
      ),
    );
  }
}

class ChipSelecter extends StatefulWidget {
  const ChipSelecter({super.key});

  @override
  State<ChipSelecter> createState() => _ChipSelecterState();
}

class _ChipSelecterState extends State<ChipSelecter> {
  int? selected;

  List<String> options = [
    'Female',
    'Male',
    'Non-binary',
    'Other',
    'Prefer not to say',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: List<Widget>.generate(
        options.length,
        (int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: ChipItem(
              text: options[index],
              selected:
                  // ignore: avoid_bool_literals_in_conditional_expressions
                  selected == null
                      ? false
                      : options[index] == options[selected!],
            ),
          );
        },
      ).toList(),
    );
  }
}

class ChipItem extends StatelessWidget {
  const ChipItem({
    super.key,
    required this.text,
    required this.selected,
  });
  final String text;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? AppColors.whiteColor : AppColors.greyColor,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: selected ? AppColors.whiteColor : AppColors.greyColor,
            ),
      ),
    );
  }
}
