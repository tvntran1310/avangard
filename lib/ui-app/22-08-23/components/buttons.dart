import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const GetStartedButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(75, 207, 206, 206),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text into button
            Text(
              text,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 15,
              ),
            ),

            // icon arrow
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
