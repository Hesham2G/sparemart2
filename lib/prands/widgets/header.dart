import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sparemart2/prands/themes/constants.dart';
import 'package:sparemart2/prands/themes/constants.dart';


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Center(
        
          child: Padding(
            
          
            
            
          
            
            padding: const EdgeInsets.all(26.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              
              
              Text(
                "Explore",
                
                style: TextStyle(
                    color: titleTextColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Avenir'),
                textAlign: TextAlign.left,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Text(
                     "The type of car",
                     style: TextStyle(
                         color: titleTextColor,
                         fontSize: 22,
                         fontWeight: FontWeight.w400,
                         fontFamily: 'Avenir'),
                     textAlign: TextAlign.left,
                   ),
                 //  FancyButton(
                      //   button_text: "Shopping the spares now",
                        // button_height: 40,
                      
                      //   button_width: 400,
                      //   button_radius: 50,
                       //  button_color: Colors.deepPurpleAccent,
                       //  button_outline_color: Colors.yellow,
                        // button_outline_width: 1,
                       //  button_text_color: const Color.fromARGB(255, 0, 82, 149),
                       //  button_icon_color: Colors.deepPurpleAccent,
                       //  icon_size: 22,
                       //  button_text_size: 20,
                      //   onClick: (){
                          
                        // }),
                        
                  SizedBox(
                    width: 40,
                    child: Icon(
                      Ionicons.chevron_down,
                      color: secondaryTextColor,
                    ),
                  )
                ],
              )
            ]),
            
          ),
        ),
      ],
    );
  }
}
