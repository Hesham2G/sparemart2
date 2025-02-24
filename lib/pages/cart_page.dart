import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparemart2/components/button.dart';
import 'package:sparemart2/components/is_loading.dart';
import 'package:sparemart2/models/food.dart';
import 'package:sparemart2/models/shop.dart';
import 'package:sparemart2/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  //removefromcart
  void removeFromCart(Food food,BuildContext context){
    // get access to the shop
    final shop = context.read<Shop>();

    //remove from cart
    shop.removeFromCart(food);

  }

  @override
  Widget build(BuildContext context) {
    return  Consumer<Shop>(builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text("My Cart"),

        elevation: 0,
        backgroundColor: thirdColor,
      ),
      body: Column(
        children: [
          //Custom Cart
          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index) {
              //get food from cart
              final Food food = value.cart[index];
            
              //get the food name
              final String foodName = food.name;
            
              //get the food price
              final String foodPrice = food.price;
            
              //return list tile
              return Container(
                decoration: BoxDecoration(color: secondryColor,borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(left: 20,top: 20,right: 20),
            
                child: ListTile(
                  title: Text(foodName,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  subtitle: Text(foodPrice,style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () => removeFromCart(food,context), icon: Icon(Icons.delete,color: Colors.grey[300],)),
                ),
              );
            
            }
            
            ),
          ),
          
          //pay button
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyButton(text: "Pay Now", onTap: (){
              
            },),
          ),
        ],
      ),
    ),
    );
  }
}