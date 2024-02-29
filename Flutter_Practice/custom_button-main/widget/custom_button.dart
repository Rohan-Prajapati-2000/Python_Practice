// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MyCustomButton extends StatelessWidget {
//   final String btnName;
//   final Icon? btnIcon;
//   final Color? bgColor;
//   final Color? fontColor;
//   final VoidCallback? callback;
//
//   MyCustomButton(
//       {required this.btnName,
//       this.btnIcon,
//       this.fontColor,
//       this.bgColor = Colors.blue,
//       this.callback});
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         callback!();
//       },
//       child: btnIcon != null
//           ? Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [btnIcon!, Text(btnName, style: TextStyle(
//                 color: fontColor ?? Colors.white
//               ),)],
//             )
//           : Text(btnName, style: TextStyle(
//         color: fontColor ?? Colors.white
//       ),),
//       style: ElevatedButton.styleFrom(
//           backgroundColor: bgColor,
//           shadowColor: bgColor,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(21),
//                   bottomLeft: Radius.circular(21)))),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Roundable_Button extends StatelessWidget {
  final String btnName;
  final Color? bgColor;
  final Color? textColor;
  final Icon? icon;
  final VoidCallback? callback;

  Roundable_Button(
      {required this.btnName,
      this.bgColor,
      this.textColor,
      this.icon,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,

                SizedBox(width: 15),

                Text(btnName,
                  style: TextStyle(color: textColor),
                ),
              ],
            )
          : Text(btnName, style: TextStyle(
        color: textColor
      ),
      ),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        backgroundColor: bgColor
      ),
    );
  }
}
