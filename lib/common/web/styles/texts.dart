import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class JTexts {


  static const TextStyle styleWebTitleLg = TextStyle(
    fontSize: JSize.fontXl,
    fontWeight: FontWeight.bold,
    color: JColor.textPrimary

  ) ;
  static const TextStyle styleError = TextStyle(
    fontSize: JSize.fontXl,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    

  ) ;
  static const TextStyle styleButtonText = TextStyle(
    fontSize: JSize.fontSm,
    color: JColor.textPrimary

  ) ;

   static const TextStyle statValue = TextStyle(
    fontSize: JSize.fontXl,
    fontWeight: FontWeight.w900,
    color: JColor.textPrimary

  ) ;



// ================================ WEB STYLES ================================

  static const TextStyle wTitle = TextStyle(
    fontSize: JSize.fontXl,
    fontWeight: FontWeight.w900,
    color: JColor.textPrimary

  ) ;


   static const TextStyle wSubtitle = TextStyle(
    fontSize: JSize.fontMd,
    fontWeight: FontWeight.w600,
    color: JColor.textPrimary

  ) ;



    static const TextStyle wBody = TextStyle(
    fontSize: JSize.fontSm,
    // fontWeight: FontWeight.w600,
    color: JColor.textPrimary

  ) ;


  // ----------------------- Navigation Styles -----------------------


       static const TextStyle wNavItemSelected = TextStyle(
    fontSize: JSize.fontSm,
    fontWeight: FontWeight.w600,
    color: JColor.primary

  ) ;

         static const TextStyle wNavItemNotSelected = TextStyle(
    fontSize: JSize.fontSm,
    // fontWeight: FontWeight.w600,
    color: JColor.icon

  ) ;

         static const TextStyle wNavItem = TextStyle(
    fontSize: JSize.fontSm,
    fontWeight: FontWeight.w600,
    color: JColor.textPrimary

  ) ;
}