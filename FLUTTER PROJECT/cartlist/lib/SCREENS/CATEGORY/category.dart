import 'package:cartlist/MODAL/categoryModal.dart';
import 'package:cartlist/PROVIDER/categoryProvider.dart';
import 'package:cartlist/SERVICE/getCategoryApi.dart';
import 'package:cartlist/WIDGETS/cardWidgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  getSampleResponse() async {
    var provider = Provider.of<HomePageProvider>(context, listen: false);
    var response = await HomeData.getSampleResponse();
    if (response.isSuccessful!) {
      provider.setPostList(response.data!);
      print("############");
      print(provider.postList.length);
    } else {}
  }

  @override
  void initState() {
    super.initState();
    getSampleResponse();
  }

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<HomePageProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categoryProvider.postList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.4),
          mainAxisExtent: 125,
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext context, int index) {
          SampleResponse modalResponse = categoryProvider.getPostByIndex(index);
          return gridCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/subCategoryScreen');
              },
              categoryImage: modalResponse.categoryImage,
              categoryName: modalResponse.category);
        },
      ),
    );
  }
}
