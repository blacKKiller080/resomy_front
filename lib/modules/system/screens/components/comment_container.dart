import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/modules/system/screens/components/user_comment_item.dart';
import 'package:sizer/sizer.dart';

class CommentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          UserCommentItem('assets/images/png/ava1.png', 'Диниза',
              'Теперь часто буду применять свой код!', 2.4.h, 1.78.h, 4.25.h),
          UserCommentItem('assets/images/png/ava2.png', 'Айкен',
              'Так интересно читать!', 8.31.h, 7.82.h, 9.9.h),
          UserCommentItem('assets/images/png/ava1.png', 'Вы', 'Ваш комментарий',
              14.34.h, 13.73.h, 16.3.h)
        ],
      ),
      width: 83.93.w,
      height: 21.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
