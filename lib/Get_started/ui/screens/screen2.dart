import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Organize Your Data",
    image: "assets/images/Group 827239.png",
    desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet est, diam nisln, sedsed a rhoncus.",
  ),
  OnboardingContents(
    title: "One workspace for all!",
    image: "assets/images/Group 827221.png",
    desc:
    "No matter what your field of work is, Workiom will be ready in any case",
  ),

];