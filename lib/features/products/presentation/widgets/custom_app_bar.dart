import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/functions/functions.dart';
import 'package:foodly/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: kWidth,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: kSecondary,
                  radius: 23.r,
                  backgroundImage: const NetworkImage(
                      "https://yt3.ggpht.com/Hze2Ggk-K_Nge_ny4MvnjNuC3svxVZHZL_H6dWCw7w-hsz90ccGYndOVBgZhVPsJVpB5Nkds=s88-c-k-c0x00ffffff-no-rj"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                        "Delivere to",
                        style: LightTextStyles.kSceondary13w600,
                      ),
                      SizedBox(
                        width: kWidth * 0.65,
                        child:   Text(
                            "16768 21st Ave NW, Washington, DC 20036",
                            overflow: TextOverflow.ellipsis,
                            style: LightTextStyles.kGreyLight11w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(getTimeOfDay(), style: LightTextStyles.textStyle35),
          ],
        ),
      ),
    );
  }
}
