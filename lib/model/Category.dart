import 'package:flutter/material.dart';
import 'package:news_app/app_colors.dart';

class Category{
  String id;
  String imagePath;
  String tittle;
  Color color;

  Category({required this.id, required this.imagePath, required this.tittle,
    required this.color,});

  /*
          science       technology
  */
  ///func to make list of category
  static List<Category> getCategories(){
    return [
      Category(id: "sports", imagePath: "assets/images/sports.png",
          tittle: "Sports", color: AppColors.redColor
      ),
      Category(id: "general", imagePath: "assets/images/general.png",
          tittle: "General", color: AppColors.darkBlueColor
      ),
      Category(id: "health", imagePath: "assets/images/health.png",
          tittle: "Health", color: AppColors.pinkColor
      ),
      Category(id: "business", imagePath: "assets/images/business.png",
          tittle: "Business", color: AppColors.brownColor
      ),
      Category(id: "entertainment", imagePath: "assets/images/entertainment.png",
          tittle: "Entertainment", color: AppColors.blueColor
      ),
      Category(id: "science", imagePath: "assets/images/science.png",
          tittle: "Science", color: AppColors.yellowColor
      ),
    ];
  }
}