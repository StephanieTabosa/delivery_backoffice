import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/app_colors.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({
    required this.body,
    super.key,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    final shortestSide = context.screenShortestSide;

    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        child: Stack(
          children: [
            Container(
              color: AppColors.instance.black,
              constraints: BoxConstraints(
                maxWidth: screenWidth,
                minHeight: shortestSide * .13,
                maxHeight: shortestSide * .13,
              ),
              alignment: Alignment.centerLeft,
              child: Container(
                width: shortestSide * .13,
                margin: const EdgeInsets.only(left: 60),
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Positioned.fill(
              top: shortestSide * .11,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: double.infinity,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        color: AppColors.instance.grey,
                        child: body,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
