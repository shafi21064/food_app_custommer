import 'package:flutter/material.dart';
import '/Controllers/category_Controller.dart';
import '/theme/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '/utils/font_size.dart';
import '/utils/theme_colors.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import 'category_all_restaurants.dart';

class ViewAllCategories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewAllCategoriesSTate();
  }
}

class _ViewAllCategoriesSTate extends State<ViewAllCategories> {
  var mainHeight, mainWidth;
  var categoryId;
  final categoriesController = Get.put(CategoryController());

//String page = 'Home';
  @override
  void initState() {
    categoriesController.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mainHeight = MediaQuery.of(context).size.height;
    mainWidth = MediaQuery.of(context).size.width;
    return GetBuilder<CategoryController>(
      init: CategoryController(),
      builder: (categories) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: ThemeColors.baseThemeColor,
              )),
          title: Text(
            "ALL_CATEGORIES".tr,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: FontSize.xLarge,
                color: ThemeColors.baseThemeColor),
          ),
          backgroundColor: Colors.white54,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,

            // itemCount: cuisine.cuisineList.length,
            children: List.generate(
              categories.categoriesList.length,
              (index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      categoryId = categories.categoriesList[index].id;
                      print(categoryId);
                      print(categories.categoriesList.length);

                      Get.to(() => CateegoryAllRestaurents(
                            categoryId: categoryId,
                            categoryTitle:
                                categories.categoriesList[index].title,
                          ));
                    });
                  }),
                  child: Card(
                    elevation: 3.0,
                    color: white,
                    child: Container(
                      padding: EdgeInsetsDirectional.all(10),
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "${categories.categoriesList[index].image}",
                            imageBuilder: (context, imageProvider) => Image(
                              image: imageProvider,
                              height: 80,
                            ),
                            placeholder: (context, url) => Shimmer.fromColors(
                              child: CircleAvatar(radius: 50),
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[400]!,
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(height: 10),
                          Text(
                            " ${categories.categoriesList[index].title}",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
