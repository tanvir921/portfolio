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
                      child: const Text(
                        'About Me',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Portfolio',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
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
                    const SizedBox(width: 100),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'About Me',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 30),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Portfolio',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 30),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
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
            child: const Image(
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
                    desktop: 100,
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
                child: const Center(
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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
