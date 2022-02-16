import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/styles.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;
  const BoxText(Key key, this.text, this.style, this.alignment): super(key: key);

  const BoxText.headingOne(this.text, {Key? key, TextAlign align = TextAlign.start})
      : style = heading1Style,
        alignment = align, super(key: key);
  const BoxText.headingTwo(this.text, {Key? key,TextAlign align = TextAlign.start})
      : style = heading2Style,
        alignment = align, super(key: key);
  const BoxText.headingThree(this.text, {Key? key,TextAlign align = TextAlign.start})
      : style = heading3Style,
        alignment = align, super(key: key);
  const BoxText.headline(this.text, {Key? key,TextAlign align = TextAlign.start})
      : style = headlineStyle,
        alignment = align, super(key: key);
  const BoxText.subheading(this.text, {Key? key,TextAlign align = TextAlign.start})
      : style = subheadingStyle,
        alignment = align, super(key: key);
  const BoxText.caption(this.text, {Key? key,TextAlign align = TextAlign.start})
      : style = captionStyle,
        alignment = align, super(key: key);

  BoxText.body(this.text,
      {Key? key, Color color = kcMediumGreyColor, TextAlign align = TextAlign.start})
      : style = bodyStyle.copyWith(color: color),
        alignment = align, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: alignment,
    );
  }
}
