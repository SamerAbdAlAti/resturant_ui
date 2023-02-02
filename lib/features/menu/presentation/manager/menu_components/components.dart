

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../generated/assets.dart';

class MenuComponents {

  static Widget defaultButton({required String asset,VoidCallback?onTap}){

    return  Container(
      height: 60,
      width: 60,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: MaterialButton(
        onPressed: onTap,
        child:   SvgPicture.asset(asset),
      ),
    );
  }
}