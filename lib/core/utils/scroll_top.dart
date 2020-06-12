import 'package:flutter/material.dart';

void scrollToTop({ScrollController scrollController}) async {
  scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOut
  );
}