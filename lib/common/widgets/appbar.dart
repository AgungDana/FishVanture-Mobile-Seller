import 'package:iconly/iconly.dart';
import 'package:seller/config/colors.dart';
import 'package:seller/config/text_style.dart';
import 'package:flutter/material.dart';
import 'package:seller/core/route/bloc_route.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
    required this.appbarText,
  }) : super(key: key);

  final String appbarText;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 88);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      color: CustomColor.primary,
      height: 88,
      child: SafeArea(
        child: Row(
          children: [
            InkWell(
              onTap: () {
                RouteBloc().pop();
              },
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  // color: Colors.amber,
                  child: const Icon(
                    IconlyLight.arrow_left,
                    color: CustomColor.white,
                  )),
            ),
            const SizedBox(width: 4),
            Text(
              appbarText,
              style: CustomTextStyle.body1Medium.copyWith(
                color: CustomColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
