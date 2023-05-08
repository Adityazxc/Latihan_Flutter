import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Utils/global.colors.dart';

class TextListPlanGlobal extends StatelessWidget {
  const TextListPlanGlobal({
    super.key,
    required this.textList,
  });

  final String textList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_sharp,
            color: GlobalColors.checklist,
          ),
          const SizedBox(width: 10),
          Text(
            textList,
            style: TextStyle(
                color: GlobalColors.unselected,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
