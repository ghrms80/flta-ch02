import 'package:ch02_hello_flutter/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({
    super.key,
    required this.recipe,
  });

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.recipe.label,
        ),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: [
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  widget.recipe.imageUrl,
                ),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(
                fontSize: 18,
              ),
              // TODO: Add Expanded
              // TODO: Add Slider() here
            )
          ],
        ),
      ),
    );
  }
}
