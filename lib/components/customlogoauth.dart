// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:sparemart2/theme/colors.dart';
class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                alignment: Alignment.center,
                width: 80 ,
                height: 80,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(70),
                  
                ) ,
                child: Image.asset("lib/images/brake.png",
                height: 40,),)
                
            );
  }
}