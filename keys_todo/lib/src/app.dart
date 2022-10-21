import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/ui/screens/home_screen.dart';

class KeysTodoApp extends StatelessWidget {
  const KeysTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final w700BitterFont = GoogleFonts.bitter(fontWeight: FontWeight.w700);

    return MaterialApp(
      title: "Keys Todo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: AppColors.secondaryColor),
        primaryColor: AppColors.primary,
        primaryColorDark: AppColors.primaryDark,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        primaryTextTheme: TextTheme(headline6: w700BitterFont),
        textTheme: TextTheme(
          subtitle1: w700BitterFont.apply(color: AppColors.black),
          headline6: w700BitterFont.apply(color: AppColors.black),
          bodyText2: w700BitterFont.apply(color: AppColors.black),
        ),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
