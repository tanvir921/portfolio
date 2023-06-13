import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScreenTypeLayout.builder(
            mobile: (BuildContext context) => IconButton(
                onPressed: () {}, icon: Image.asset('assets/images/menu.png')),
            tablet: (BuildContext context) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('About Me')),
                TextButton(onPressed: () {}, child: Text('About Me')),
                TextButton(onPressed: () {}, child: Text('About Me')),
              ],
            ),
            desktop: (BuildContext context) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('About Me')),
                TextButton(onPressed: () {}, child: Text('About Me')),
                TextButton(onPressed: () {}, child: Text('About Me')),
              ],
            ),
          ),
          SizedBox(
            height: getValueForScreenType<double>(
              context: context,
              mobile: 50,
              tablet: 50,
              desktop: 50,
            ),
            width: getValueForScreenType<double>(
              context: context,
              mobile: 50,
              tablet: 50,
              desktop: 50,
            ),
            child: Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              0,
              12,
              getValueForScreenType<double>(
                context: context,
                mobile: 0,
                tablet: 0,
                desktop: 150,
              ),
              12,
            ),
            width: getValueForScreenType<double>(
              context: context,
              mobile: 100,
              desktop: 100,
              tablet: 100,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                'Contact Me',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
