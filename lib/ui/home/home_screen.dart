import 'package:flutter/material.dart';
import 'package:portfolio/ui/home/custom/custom_appbar.dart';
import 'package:portfolio/ui/home/custom/top_cover.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            getValueForScreenType<double>(
              context: context,
              mobile: 0,
              desktop: 120,
              tablet: 120,
            ),
            0,
            0,
            getValueForScreenType<double>(
              context: context,
              mobile: 0,
              desktop: 20,
              tablet: 20,
            ),
          ),
          child: Column(
            children: [
              TopCover(),
            ],
          ),
        ),
      ),
    );
  }
}
