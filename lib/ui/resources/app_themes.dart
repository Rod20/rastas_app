import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';

class AppThemes {
  static ThemeData rastasTheme() {
    ///
    /// Styles for General Texts
    ///
    TextTheme _getTextTheme() {
      return TextTheme(
        /// Used in:
        display4: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w900,
          fontFamily: 'SFProText',
          color: lightAccent,
        ),

        /// Used in:
        caption: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: 'SFProText',
        ),

        /// Used in:
        title: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),

        /// Used in:
        subtitle: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
        ),

        /// Used in:
        headline: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: lightGreyColor,
        ),

        /// Used in: buttons
        button: TextStyle(
          fontSize: 14.0,
        ),

        /// Used in:
        overline: TextStyle(
          fontSize: 12.0,
        ),

        /// Used in:
        subhead: TextStyle(
          fontSize: 12.0,
        ),

        /// Used in:
        body1: TextStyle(
          fontSize: 12.0,
        ),
      );
    }

    ///
    /// Styles for Tabs
    ///
    TabBarTheme _getTabBarTheme() {
      return TabBarTheme(
        labelColor: lightAccent,
        labelStyle: TextStyle(fontFamily: 'SFProDisplay', fontSize: 16.0),
        unselectedLabelColor: lightGreyColor,
        unselectedLabelStyle:
            TextStyle(fontFamily: 'SFProDisplay', fontSize: 14.0),
      );
    }

    ///
    /// Styles for AppBar
    ///
    AppBarTheme _getAppBarTheme() {
      return AppBarTheme(
        color: lightPrimary,
      );
    }

    ///
    /// Core Styles
    ///
    final ThemeData theme = ThemeData(
      fontFamily: 'SFProText',

      // Primary Colors
      primaryColor: lightAccent,
      accentColor: lightAccent,

      // Backgrounds
      scaffoldBackgroundColor: lightBG,
      backgroundColor: lightBG,

      // Tabs
      cursorColor: lightAccent,
      indicatorColor: lightAccent,

      // Buttons
      buttonColor: lightAccent,

      // Header
      primaryTextTheme: _getTextTheme(),
      tabBarTheme: _getTabBarTheme(),
      appBarTheme: _getAppBarTheme(),
      textTheme: _getTextTheme(),

      // Input
      hintColor: Colors.grey,
    );

    return theme;
  }
}
