
import 'package:flutter/material.dart';
import 'package:flutter_application_i_cart/provider/add_to_cart_provider.dart';
import 'package:flutter_application_i_cart/provider/favorite_provider.dart';
import 'package:flutter_application_i_cart/view/nav_bar_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          // for add to cart 
          ChangeNotifierProvider(create: (_)=>CartProvider()),
          // for favorite 
          ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.mulishTextTheme(),
          ),
          home: const BottomNavBar(),
        ),
      );
}