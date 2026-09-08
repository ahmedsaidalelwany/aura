import 'package:aura/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';


class ToastUtils {
  // Shared Configuration
  static const _animationDuration = Duration(milliseconds: 300);
  static const _autoCloseDuration = Duration(seconds: 5);
  static const _defaultPadding =
  EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const _defaultMargin =
  EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const _defaultBorderRadius = BorderRadius.all(Radius.circular(12));
  static const _defaultBoxShadow = [
    BoxShadow(
      color: Color(0x07000000),
      blurRadius: 16,
      offset: Offset(0, 16),
      spreadRadius: 0,
    ),
  ];

  static void showErrorToast(
      BuildContext context,
      String title,
      String description,
      ) {
    _showToast(
      context: context,
      type: ToastificationType.error,
      title: title,
      description: description,
      primaryColor: Colors.red,
      icon: const Icon(Icons.error, color: Colors.white),
    );
  }

  static void showSuccessToast(
      BuildContext context,
      String title,
      String description,
      ) {
    _showToast(
      context: context,
      type: ToastificationType.success,
      title: title,
      description: description,
      primaryColor: Colors.green,
      icon: const Icon(Icons.check, color: Colors.white),
    );
  }

  static void _showToast({
    required BuildContext context,
    required ToastificationType type,
    required String title,
    required String description,
    required Color primaryColor,
    required Icon icon,
  }) {
    toastification.show(
      context: context,
      type: type,
      title: Text(
        title,
        style: getBoldStyle(color: Colors.white, fontSize: 16.sp),
      ),
      description: Text(
        description,
        style: getMediumStyle(color: Colors.white, fontSize: 13.sp),
      ),
      style: ToastificationStyle.fillColored,
      autoCloseDuration: _autoCloseDuration,
      alignment: Alignment.topCenter,
      animationDuration: _animationDuration,
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      icon: icon,
      showIcon: true,
      primaryColor: primaryColor,
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      padding: _defaultPadding,
      margin: _defaultMargin,
      borderRadius: _defaultBorderRadius,
      boxShadow: _defaultBoxShadow,
      showProgressBar: true,
      // ignore: deprecated_member_use
      closeButtonShowType: CloseButtonShowType.onHover,
      closeOnClick: false,
      pauseOnHover: true,
      dragToClose: true,
      applyBlurEffect: true,
    );
  }
}
