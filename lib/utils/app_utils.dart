import 'package:badminton_accessories_shop/widgets/app_toast/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AppUtils {
  static Map<String, dynamic> extractUserData(String accessToken) {
    return JwtDecoder.decode(accessToken);
  }

  static void showOverlayEntry(BuildContext context, String message) {
    final OverlayState overlay = Overlay.of(context);
    final OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => AppToast(message: message),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }
}
