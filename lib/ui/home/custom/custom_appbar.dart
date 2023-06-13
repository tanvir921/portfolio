import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: ScreenTypeLayout.builder(
                mobile: (BuildContext context) => IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/menu.png')),
                tablet: (BuildContext context) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'About Me',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Portfolio',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Me',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                desktop: (BuildContext context) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 150),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'About Me',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 30),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Portfolio',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 30),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Me',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
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
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  0,
                  0,
                  getValueForScreenType<double>(
                    context: context,
                    mobile: 0,
                    tablet: 0,
                    desktop: 150,
                  ),
                  0,
                ),
                width: getValueForScreenType<double>(
                  context: context,
                  mobile: 100,
                  desktop: 100,
                  tablet: 100,
                ),
                height: getValueForScreenType<double>(
                  context: context,
                  mobile: 30,
                  desktop: 30,
                  tablet: 30,
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
