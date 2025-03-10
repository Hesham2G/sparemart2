import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sparemart2/components/button.dart';
import 'package:sparemart2/models/food.dart';
import 'package:sparemart2/models/shop.dart';

import 'package:sparemart2/theme/colors.dart';



class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
 //quantity
 int quantityCount = 0;

 //decrment quntity
 void decrementQuantity(){
  setState(() {
    if(quantityCount > 0){
      quantityCount--;
    }
  });
 }

 //increment qun
 void incrementQuantity (){
   setState(() {
    quantityCount++;
  });
 }
 //add to cart
 void addToCart(){
  //only add to cart if there is something in the cart
  if(quantityCount > 0){
    //get access to shop
    final shop = context.read<Shop>();

    // add to the cart
    shop.addToCart(widget.food, quantityCount);

    // let the user know it was succesful
    showDialog(context: context,
    barrierDismissible: false,
     builder: (context) => AlertDialog(
      backgroundColor: primaryColor,
      content: const Text("Successfully added to cart",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
      actions: [
        //okay button
        IconButton(onPressed: (){
          // pop once to remove dialog box
          Navigator.pop(context);

          // pop again to go provious screen
           Navigator.pop(context);
        }, icon:const Icon(Icons.done,color: Colors.white,),),
      ],
    ),);
  }

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(children: [
        //listview of food details
      Expanded(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(children: [
            //image
            Image.asset(widget.food.imagePath,height: 200,
            ),
        
            const SizedBox(height: 25,),
        
            //rating
           Row(children: [
            //star icon
            Icon(Icons.star,color: Colors.yellow[800]
            ,),
        
            const SizedBox(width: 5,),
        
            //rating number
            Text(widget.food.rating,style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),),
           ],
           ),

           const SizedBox(height: 10,),
            //food name
            Text(widget.food.name,style: GoogleFonts.dmSerifDisplay(fontSize: 28),
            ),

            const SizedBox(height: 25,),
        
            //describtion
            Text("Description",style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold,fontSize: 18,),
            ),

            const SizedBox(height: 10,),

            Text(widget.food.Description,
            style: TextStyle(color: Colors.grey[600],fontSize: 14,height: 2,),
            ),
        ],
        ),
      ),
      ),
        //price + quantity + add to cart button
        Container(
          color: primaryColor,
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            //price + quantity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //price
              Text("\$${widget.food.price}", style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),
              ),

              //quantity
              Row(children: [
                //minus butto
                Container(
                  decoration: BoxDecoration(color: secondryColor,shape:BoxShape.circle),
                  child: IconButton(onPressed: decrementQuantity, icon:const Icon(Icons.remove,color: Colors.white,),),
                ), 

                //quantity count
                SizedBox(
                  width: 40,
                  child: Center(child: Text(quantityCount.toString(),style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),))),

                //plusbutton
                 Container(
                  decoration: BoxDecoration(color: secondryColor,shape:BoxShape.circle),
                  child: IconButton(onPressed: incrementQuantity, icon:const Icon(Icons.add,color: Colors.white,),),
                ) 
              ],)
            ],
            ),
            const SizedBox(height: 25,),

            // add to cart button
            MyButton(text: "Add to Cart", onTap: addToCart),
          ],
          ),
        )
      ],),

    );
  }
}