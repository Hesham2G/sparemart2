import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:sparemart2/components/button.dart';
import 'package:sparemart2/components/is_loading.dart';



import 'package:sparemart2/models/shop.dart';


import 'package:sparemart2/pages/food_details_page.dart';
import 'package:sparemart2/theme/colors.dart';

import '../components/food_tile.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
 
  
}

class _MenuPageState extends State<MenuPage> {
  


//navigator to food item
 void navigateToFoodDetials(int index){

  // get the shop and it's menu
  final shop = context.read<Shop>();
  final foodMenu = shop.foodMenu;
  
  Navigator.push(context, MaterialPageRoute(builder:  (context) => FoodDetailsPage(
    food: foodMenu[index],
  
  ),),);
 }

  @override
  Widget build(BuildContext context) {
      // get the shop and it's menu
  final shop = context.read<Shop>();
  final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
        elevation: 0,
        leading: IconButton(onPressed: ()async{
              
            GoogleSignIn googleSignIn = GoogleSignIn();
            googleSignIn.disconnect();
            await FirebaseAuth.instance.signOut();
            showLoading(context, () {
            Navigator.of(context).pushNamedAndRemoveUntil("login", (route) => false);
            });
          }, icon: Icon(Icons.exit_to_app,color: Color.fromARGB(255, 235, 117, 32),)),
        
        
        
        title:const Text("             SpareMart",style: TextStyle(fontWeight: FontWeight.bold),
        
        ),
        actions: [
          //cart button
          IconButton(onPressed: (){
            
            Navigator.pushNamed(context,'/cartpage',);
            
          }, icon:const Icon(Icons.shopping_cart,color: Color.fromARGB(255, 235, 117, 32),)),
            
        ],
        ),
           body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            //promo banner
            Container(
              decoration: BoxDecoration(color:thirdColor,borderRadius: BorderRadius.circular(20) ),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                //promo message
              Text('Get 32% promo',style: GoogleFonts.dmSerifDisplay(
                fontSize: 20,
                color: Colors.white,
              ),),

            const SizedBox(height: 20,),

             // redeem button
             MyButton(text: "Redeem", onTap: (){
              
             }),
              ],),

             //image
             Image.asset('lib/images/car-engine.png',height: 100,),
            ],
            ),
            ),

            const SizedBox(height: 25,),

            //searc
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,),
              child: TextField(
                decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)
                ,),
                enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20),
                ),hintText: "Search here..",
                ),
              ),
            ),

            const SizedBox(height: 15,),
           

            // menu
            Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Spare parts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],
              fontSize: 18),
              
              ),
              
            ),
            
            

            const SizedBox(height: 10,),

           Expanded(
            child: ListView.builder(scrollDirection: Axis.horizontal,
           
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
              food: foodMenu[index],
              
              onTap: ()  =>       navigateToFoodDetials(index),
              
              ),
                       ),
           ),
           
               InkWell(
              onTap: (){
                Navigator.pushNamed(context, "see_all");
              },
              child: Container(
                width: 60,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                ),
                alignment: Alignment.bottomRight,
                child: Text("See all",style: TextStyle(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.bold),),
              ),
            ),
            

            //popular food
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin:const EdgeInsets.only(left: 25,right: 25,bottom: 25),
              padding:const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Row(children: [
                 //image
                 Image.asset('lib/images/headlights.png',height: 60,),
                 
                 const SizedBox(width: 20,),
                 //name and price
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //name
                  Text("Headlights", style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                  ),
                  

                  const SizedBox(height: 10,),
                  
                  Text('\$21.00',style: TextStyle(color: Colors.grey[700]),),

                 ],
                 ),

               ],
               ),

                //heart
               const Icon(Icons.favorite_outline,color: Colors.grey,size: 28,)
              ],),
              
            )
           ],
           ), 
    );
  }
}