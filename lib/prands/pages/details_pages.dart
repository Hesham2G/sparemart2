import 'package:flutter/material.dart';
import 'package:sparemart2/components/button.dart';
import 'package:sparemart2/components/is_loading.dart';
import 'package:sparemart2/prands/model/planet_info.dart';

import 'package:sparemart2/prands/themes/constants.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';

class DetailsPage extends StatelessWidget {
  final PlanetInfo planetInfo;

  const DetailsPage({Key? key, required this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        Text(
                          planetInfo.name,
                          style: TextStyle(
                              fontSize: 56,
                              fontWeight: FontWeight.w900,
                              color: primaryTextColor,
                              fontFamily: 'Avenir'),
                          textAlign: TextAlign.left,
                        ),
                        //Text(
                         // 'Solar System',
                          //style: TextStyle(
                          //    fontSize: 36,
                           //   fontWeight: FontWeight.w300,
                            //  color: primaryTextColor,
                             // fontFamily: 'Avenir'),
                         // textAlign: TextAlign.left,
                       // ),
                          //FancyButton(
                   //button_text: "Shopping the spares now",
                   //button_height: 40,
                   
                
                   //button_width: 700,
                   //button_radius: 50,
                   //button_color: Colors.deepPurpleAccent,
                   //button_outline_color: Colors.deepPurple,
                   //button_outline_width: 1,
                   //button_text_color: Colors.orange,
                   //button_icon_color: Colors.deepPurpleAccent,
                   //icon_size: 22,
                   //button_text_size: 23,
                   //onClick: (){
                     //showLoading(context, () {

                     //Navigator.pushNamed(context,'/menu_page',);
                     
                   //}
                   
                     //);
                    
                   //}),
                      MyButton(text: "Shopping the spares now",onTap: (){
              showLoading(context, () {
              //go to the menu page
              Navigator.pushNamed(context, '/menupage');
              });
             },),
                        const Divider(
                          color: Colors.black38,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          planetInfo.description,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: contentTextColor,
                              fontFamily: 'Avenir'),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Divider(
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, bottom: 10),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: contentTextColor,
                          fontFamily: 'Avenir'),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: ListView.builder(
                        itemCount: planetInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  planetInfo.images[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                right: -64,
                child: Hero(
                    tag: planetInfo.position,
                    child: Image.asset(planetInfo.iconImage))),
            Positioned(
              left: 32,
              top: 60,
              child: Text(
                planetInfo.position.toString(),
                style: TextStyle(
                    fontSize: 247,
                    color: primaryTextColor.withOpacity(0.08),
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Avenir'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            )
          ],
        ),
      ),
    );
  }
}
