import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/icons/error_text.svg",
          height: 395,
        ),
        SizedBox(height: 30),
        FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFF293047), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          onPressed: () {},
          child: Text(
            "Back To Home".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
