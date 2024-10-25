import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/bag.dart';
import '../widgets/bag_item.dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage({super.key});

  final List<Bag> favoriteItems = listOfBags()
      .where((bag) => bag.isFavorite)
      .toList(); // Aquí obtendrías los favoritos reales

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Favoritos",
          style: GoogleFonts.playfairDisplay(
            color: Colors.red[300],
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: favoriteItems.isEmpty
          ? const Center(
              child: Text(
                'No hay favoritos',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favoriteItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 230,
              ),
              itemBuilder: (context, index) {
                return BagItem(bag: favoriteItems[index]);
              },
            ),
    );
  }
}