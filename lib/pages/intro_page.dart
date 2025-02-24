import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sparemart2/components/button.dart';
import 'package:sparemart2/components/is_loading.dart';
import 'package:sparemart2/theme/colors.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  thirdColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25,),
            Text("Sparemart",style: GoogleFonts.poppins(
              fontSize: 28,
              color: Colors.white
            ),
            ),
            SizedBox(height: 25,),
              //icon            
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/tyre.png'),
            ),
            const SizedBox(height: 25,),
              //title
            Text("THE BEST OF AUTO PARTS",style: GoogleFonts.roboto(
              fontSize: 40,
              color: Colors.white,),),
            const SizedBox(height: 25,),
            //subtitle
            Text("Find high-quality car parts for every make and model, anytime and anywhere",
            style: GoogleFonts.openSans(color: Colors.grey[300],height: 2,),),

            const SizedBox(height: 25,),
             //get started button
             MyButton(text: "Get Started",onTap: (){
              showLoading(context, () {
              //go to the menu page
              Navigator.pushNamed(context, "home_pages");
              });
             },),
            
          ],
        ),
      ),
    );
  }
}