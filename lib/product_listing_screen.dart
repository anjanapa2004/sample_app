import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_app1/common_app_bar.dart';
import 'package:sample_app1/product_details_screen.dart';
import 'package:sample_app1/product_model.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> productsList = [
      ProductModel(
        name: "21Wn",
        image: "assets/images/frame1.png",
        description: "Reversible angora cardigan",
        price: 120,
      ),
      ProductModel(
        name: "21SS",
        image: "assets/images/frame2.png",
        description: "Cotton caual shirt",
        price: 90,
      ),
      ProductModel(
        name: "21FW",
        image: "assets/images/frame3.png",
        description: "Leather jacket",
        price: 150,
      ),
      ProductModel(
        name: "22SP",
        image: "assets/images/frame4.png",
        description: "Denim Jacket",
        price: 90,
      ),
      ProductModel(
        name: "21SS",
        image: "assets/images/frame5.png",
        description: "Brown Jacket",
        price: 120,
      ),
      ProductModel(
        name: "23WJ",
        image: "assets/images/frame6.png",
        description: "Winter Jacket",
        price: 120,
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: CommonAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                categoryCard("Women"),
                SizedBox(width: 7.w),
                categoryCard("All apparel"),
              ],
            ),
            SizedBox(height: 17.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 12.h,
                  crossAxisCount: 2,
                  childAspectRatio: 165.w / 240.h,
                ),
                itemBuilder: (context, index) {
                  final product = productsList[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDetailsScreen(product: product);
                          },
                        ),
                      );
                    },

                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(product.image))
                            ),
                            alignment: Alignment.bottomRight,
                            
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline, color: Colors.red)),
                          ),
                          SizedBox(height: 8.h),
                          Text(product.name),
                          Text(
                            product.description,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            '₹${product.price}',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: productsList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//created a function named categoryCard with return type widget
Widget categoryCard(String categoryname) {
  return Container(
    height: 32.h,
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.r),
      border: Border.all(color: Color(0xffDEDEDE)),
    ),
    child: Row(
      children: [
        Text(categoryname, style: TextStyle(fontSize: 16)),
        SizedBox(width: 5),
        Icon(Icons.close, size: 20),
      ],
    ),
  );
}
