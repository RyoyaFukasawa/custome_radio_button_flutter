import 'package:flutter/material.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final Widget leading;
  final ValueChanged<T?> onChanged;
  final EdgeInsets? padding;
  final Widget? title;
  final Color? backgroundColor;
  final Alignment? alignment;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxBorder? border;

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.leading,
    required this.onChanged,
    this.padding,
    this.title,
    this.backgroundColor,
    this.alignment,
    this.height,
    this.borderRadius,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    final isSelected = value == groupValue;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        child: Row(
          children: [
            Container(
              height: height,
              padding: padding,
              alignment: alignment,
              decoration: BoxDecoration(
                color: isSelected ? backgroundColor : null,
                borderRadius: borderRadius,
                border: border,
              ),
              child: leading,
            ),
            if (title != null) title,
          ],
        ),
      ),
    );
  }
}
