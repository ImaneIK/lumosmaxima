import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/pages/device_pages/screen/gradient_progress_indicator.dart';
import 'package:test1/pages/device_pages/screen/power_btn.dart';
import 'package:test1/pages/device_pages/screen/res/colors.dart';
import 'package:test1/pages/device_pages/screen/res/typography.dart';


class LampPage extends StatefulWidget {
  @override
  State<LampPage> createState() => _LampPageState();
}

class _LampPageState extends State<LampPage> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        builder: (context, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 32.h + MediaQuery.of(context).padding.top),
                    Row(
                      children: [

                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Light',
                              style: TextStyles.headline4,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Living Room',
                              style: TextStyles.headline4
                                  .copyWith(color: SmartyColors.grey),
                            ),
                            Switch.adaptive(
                              value: _isOn,
                              onChanged: (bool v) {
                                setState(() {
                                  _isOn = v;
                                });
                              },
                              activeColor: SmartyColors.primary,
                            )
                          ],
                        ),
                        Text(
                          'Light Intesity',
                          style: TextStyles.body.copyWith(color: SmartyColors.grey60),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    if (_isOn)
                      Image.asset(
                        'assets/light_on.png',
                        width: 159.w,
                      )
                    else
                      Image.asset(
                        'assets/light_off.png',
                        width: 75.w,
                      ),
                    SizedBox(height: 40.h),
                    GradientCircularProgressIndicator(
                      radius: 100.r,
                      gradientColors: [
                        const Color(0XFFE89D0D),
                        const Color(0XFFFCFBC3),
                        SmartyColors.primary,
                        SmartyColors.secondary,
                      ],
                      strokeWidth: 28.0.w,
                    ),
                    SizedBox(height: 80.h),
                    ChipButton(
                      child: const Icon(Icons.power_settings_new_rounded),
                      onPressed: () {
                        setState(() {
                          _isOn = !_isOn;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });

  }
}



