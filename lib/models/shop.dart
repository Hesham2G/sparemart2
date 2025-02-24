import 'package:flutter/material.dart';
import 'package:sparemart2/models/food.dart';

class Shop extends ChangeNotifier {
  
  //food menu
 final List <Food> _foodMenu = [
    //salmon sushi
    Food(
        name: "Engine",
        price: "3,000",
        imagePath: "lib/images/car-engine.png",
        rating: "10",
        Description: "Description: The engine is the heart of the car, converting fuel into mechanical energy to power the vehicle."),
        
    //tuna
    Food(
        name:"Transmission",
        price: "1,000",
        imagePath: "lib/images/manual-transmission.png",
        rating: "9",
        Description: "Description: A system that transfers power from the engine to the wheels, controlling the vehicle’s speed and torque."
        ),
         Food(
        name: "Alternator",
        price: "500",
        imagePath: "lib/images/alternator.png",
        rating: "8.2",
        Description: "Description: Converts mechanical energy from the engine into electrical energy to charge the battery and power the car’s electrical systems."
        ),
          Food(
        name: " Battery",
        price: "200",
        imagePath: "lib/images/car-battery.png",
        rating: "9.5",
        Description: " Provides electrical power to start the engine and powers electrical components when the engine is off."
        ),
        Food(
        name: "Radiator",
        price: "600",
        imagePath: "lib/images/radiator.png",
        rating: "8.5",
        Description: "Cools the engine by transferring heat from the coolant into the air."
        ),
         Food(
        name: "Brake Pads",
        price: "100",
        imagePath: "lib/images/brake-pad.png",
        rating: "8.9",
        Description: "Components that create friction to stop or slow down the vehicle when the brake pedal is pressed."
        ),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity){
    for (int i=0; i<quantity; i++){
      _cart.add(foodItem);

    }
    notifyListeners();
  }
  
  //remove from cart 
  void removeFromCart(Food food){
    _cart.remove(food);
    notifyListeners();
  }
}