import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_app1/common_app_bar.dart';
import 'package:sample_app1/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: CommonAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Image.asset(
              product.image,
              height: 280.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.share),
              ],
            ),
            SizedBox(height: 10),
            Text(product.description),
            SizedBox(height: 10),
            Text(
              '₹${product.price}',
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.red,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20,),
            Text("inclusive of all taxes ", style: TextStyle(color: Colors.black),),
            ElevatedButton(onPressed: (){}, child: Text("Add to cart"))
            
          ],
        ),
      ),
    );
  }
}