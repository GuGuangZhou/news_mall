import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_mall/common/values/values.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: (60 + 44.0).w), // 顶部系统栏 44px
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
          height: 1,
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: 242.w,
      height: 70.w,
      margin: EdgeInsets.only(top: 14.h),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: 16.sp,
          height: 1.3,
        ),
      ),
    );
  }

  /// 特性说明
  /// 宽度 80 + 20 + 195 = 295
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: 295.w,
      height: 80.h,
      margin: EdgeInsets.only(top: marginTop.h),
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 80.w,
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: 195.w,
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: 295.w,
      height: 44.h,
      margin: EdgeInsets.only(bottom: 40.h),
      child: MaterialButton(
        child: const Text("Get started"),
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        shape: const RoundedRectangleBorder(
          borderRadius: Radii.k6pxRadius,
        ),
        onPressed: () {
          // ExtendedNavigator.rootNavigator.pushNamed(Routes.signInPageRoute);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812 - 40 - 34),
      builder: (context, child) {
        return Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                _buildPageHeadTitle(),
                _buildPageHeaderDetail(),
                _buildFeatureItem(
                  "feature-1",
                  "Compelling photography and typography provide a beautiful reading",
                  86,
                ),
                _buildFeatureItem(
                  "feature-2",
                  "Sector news never shares your personal data with advertisers or publishers",
                  40,
                ),
                _buildFeatureItem(
                  "feature-3",
                  "You can get Premium to unlock hundreds of publications",
                  40,
                ),
                Spacer(),
                _buildStartButton(context),
              ],
            ),
          ),
        );
      }
    );
  }
}
