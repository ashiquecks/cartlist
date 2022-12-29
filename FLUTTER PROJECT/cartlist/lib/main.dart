import 'package:cartlist/PROVIDER/categoryProvider.dart';
import 'package:cartlist/SCREENS/CART/cartScreen.dart';
import 'package:cartlist/SCREENS/CATEGORY/productList.dart';
import 'package:cartlist/SCREENS/CATEGORY/subCategory.dart';
import 'package:cartlist/SCREENS/DEMO/demoScreen.dart';
import 'package:cartlist/SCREENS/FAVORITE/favoriteScreen.dart';
import 'package:cartlist/SCREENS/HOME/homeNavigation.dart';
import 'package:cartlist/SCREENS/HOME/homeScreen.dart';
import 'package:cartlist/SCREENS/INTERNET/lossConnection.dart';
import 'package:cartlist/SCREENS/PROFILE/profileScreen.dart';
import 'package:cartlist/SCREENS/SPLASH/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        initialRoute: '/splashScreen',
        routes: {
          '/splashScreen': (context) => const SplashScreen(),
          '/lossConnection': (context) => const LossConnection(),
          '/homeNavigation': (context) => const HomeNavigation(),
          '/homeScreen': (context) => const HomeScreen(),
          '/cartScreen': (context) => const CartScreen(),
          '/favoriteScreen': (context) => const FavoriteScreen(),
          '/profileScreen': (context) => const ProfileScreen(),
          '/demoScreen': (context) => const DemoScreen(),
          '/subCategoryScreen': (context) => const SubCategoryScreen(),
          '/productListScreen': (context) => const ProductListScreen(),
        },
      ),
    );
  }
}
