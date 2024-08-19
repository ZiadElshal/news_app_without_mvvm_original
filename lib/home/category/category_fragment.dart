import 'package:flutter/material.dart';
import 'package:news_app/app_colors.dart';
import 'package:news_app/home/category/category_item.dart';
import 'package:news_app/model/Category.dart';

class CategoryFragment extends StatelessWidget {
  var categoriesList = Category.getCategories();
  Function onCategoryItemClick;
  CategoryFragment({required this.onCategoryItemClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Text("Pick your category \n of interest",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: AppColors.blackColor
          ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                ),
                itemBuilder: (context, index){
                  return InkWell(
                      onTap: (){
                        onCategoryItemClick(categoriesList[index]);
                      },
                      child: CategoryItem(category: categoriesList[index], index: index));
                },
              itemCount: categoriesList.length,
            ),
          )
        ],
      ),
    );
  }
}
