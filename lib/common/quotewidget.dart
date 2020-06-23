import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotesapp/utils/theme_text.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget({Key key,@required this.backgroundColor,@required this.quote,@required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidthDp,
      height: ScreenUtil.screenHeightDp,
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(16),
            vertical: ScreenUtil().setHeight(48)),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/quote.png',
              color: Colors.white.withOpacity(0.4),
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
            ),
            Expanded(
                          child: Center(
                child: Text(
                  quote,
                  style: ThemeText.headline,
                ),
              ),
            ),
            Center(child: Text(author, style: ThemeText.subHead)),
          ],
        ),
      ),
    );
  }
}
