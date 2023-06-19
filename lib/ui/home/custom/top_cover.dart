import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/helper/responsive_helper.dart';
import 'package:portfolio/utils/color_palettes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopCover extends StatelessWidget {
  const TopCover({super.key});

  @override
  Widget build(BuildContext context) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              Container(),
              SizedBox(
                height: context.width * 0.9,
                width: context.width * 0.9,
                child: Image.asset('assets/images/tanvir.png'),
              ),
              Positioned(
                  bottom: 0,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '4+',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Years experience',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'This is',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                const Text(
                  'Tanvir',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'A mobile apps and website developer from Bangladesh.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                    color: ColorPalettes.primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Hire Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: ColorPalettes.primaryColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Dart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: ColorPalettes.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Flutter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Java',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Pyhton',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      desktop: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'This is',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 80,
                  ),
                ),
                const Text(
                  'Tanvir',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'A mobile apps and website developer from Bangladesh.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                    color: ColorPalettes.primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Hire Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: ColorPalettes.primaryColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Dart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: ColorPalettes.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Flutter',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Java',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Pyhton',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(),
                SizedBox(
                  height: context.width * 0.5,
                  width: context.width * 0.5,
                  child: Image.asset('assets/images/tanvir.png'),
                ),
                Positioned(
                    bottom: 280,
                    left: -50,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '4+',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Years experience',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
      tablet: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'This is',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 80,
                  ),
                ),
                const Text(
                  'Tanvir',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'A mobile apps and website developer from Bangladesh.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                    color: ColorPalettes.primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Hire Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: ColorPalettes.primaryColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Dart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: ColorPalettes.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Flutter',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Java',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Pyhton',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(),
                SizedBox(
                  height: context.width * 0.5,
                  width: context.width * 0.5,
                  child: Image.asset('assets/images/tanvir.png'),
                ),
                Positioned(
                    bottom: 280,
                    left: -50,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '4+',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Years experience',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
