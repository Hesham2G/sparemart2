import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparemart2/models/shop.dart';
import 'package:sparemart2/pages/food_details_page.dart';
import '../components/food_tile.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({super.key});

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {

  // التنقل إلى صفحة تفاصيل الطعام
  void navigateToFoodDetials(int index) {
    // الحصول على المتجر والقائمة الخاصة به
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // الحصول على المتجر والقائمة
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 235, 117, 32)),
        ),
        title: const Text(
          "             SpareMart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          // زر عربة التسوق
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 235, 117, 32)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),

          // العنوان الخاص بالقائمة
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Car parts",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 18),
            ),
          ),
          const SizedBox(height: 10),

          // عرض قائمة الطعام في GridView
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(right: 18),  
              // يمكنك تغيير هذا إذا كنت تريد عرض العناصر أفقياً
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetials(index),
                
              ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,  // عدد الأعمدة التي سيتم عرض العناصر فيها
                crossAxisSpacing:0,  // المسافة بين الأعمدة
                mainAxisSpacing: 10,   // المسافة بين العناصر في الاتجاه الرأسي
                childAspectRatio: 0.6, // 
            )
            ),
          ),
        ],
      ),
    );
  }
}
