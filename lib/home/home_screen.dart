import 'package:flutter/material.dart';
import 'package:news_app/app_colors.dart';
import 'package:news_app/home/category/category_details.dart';
import 'package:news_app/home/category/category_fragment.dart';
import 'package:news_app/home/drawer/home_drawer.dart';
import 'package:news_app/home/settings/settings_tab.dart';
import 'package:news_app/home/tabs/tab_widget.dart';
import 'package:news_app/model/Category.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/model/api_manager.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "hme_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.whiteColor,
          child: Image.asset("assets/images/main_background.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(selectedSideMenuItem == HomeDrawer.settings ? "Settings"
                : selectedCategory == null ? "News App"
                : selectedCategory!.tittle,
            style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          drawer: Drawer(
            child: HomeDrawer(onSideMenuItemClick: onSideMenuItemClick,),
          ),
          body: selectedSideMenuItem == HomeDrawer.settings ?
          SettingsTab()
              :
          selectedCategory == null ?
          CategoryFragment(onCategoryItemClick: onCategoryItemClick,) :
          CategoryDetails(category: selectedCategory!,),
        ),
      ],
    );
  }
  Category? selectedCategory;
  void onCategoryItemClick(Category newCategory){
    //todo: newCategory => user selected
    selectedCategory = newCategory;
    setState(() {

    });
  }

  int selectedSideMenuItem = HomeDrawer.categories;
  void onSideMenuItemClick(int newSideMenuItem){
    //todo: newSideMenuItem => user selected
    selectedSideMenuItem = newSideMenuItem;
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {

    });
  }
}
