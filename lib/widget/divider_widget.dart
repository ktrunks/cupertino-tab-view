import 'package:flutter/material.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/widget/dotted_divider.dart';

class DividerWidget extends StatelessWidget {
  final Color dividerColor;
  final bool status;

  DividerWidget({required this.dividerColor, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        status
            ? Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    color: dividerColor,
                    borderRadius: BorderRadius.all(Radius.circular(23))),
              )
            : Container(),
        Expanded(
          child: DashedLine(
            color: dividerColor,
            dashWidth: 0.5,
          ),
        ),
      ],
    );
  }
}
