import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeText {
  static final headline=_headline.copyWith(
    fontSize: ScreenUtil().setSp(32),
  );

  static final subHead=_subHead.copyWith(
    fontSize: ScreenUtil().setSp(20),
  );

  static const _headline = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
  );
  static const _subHead = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
