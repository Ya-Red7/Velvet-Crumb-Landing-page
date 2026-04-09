import 'package:flutter/material.dart';
import '../widgets/ingredient_item.dart';
import '../core/constants.dart';

class IngredientExplorerSection extends StatelessWidget {
  const IngredientExplorerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          final sectionHeight = constraints.maxHeight;
          final sectionWidth = constraints.maxWidth;

          return Container(
            height: 600,
            width: double.infinity,
            color: Colors.black,
            child: Stack(
              children: [
                Center(
                  child: Text(
                    "THE BLIND TASTE\nINGREDIENTS",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 48,
                      color: Colors.white10,
                    ),
                  ),
                ),

                ...mysteryIngredients.map((ing) => Positioned(
                  top: 600 * ing.top,
                  left: sectionWidth * ing.left,
                  child: IngredientItem(
                    name: ing.name,
                    notes: ing.notes,
                    imagePath: ing.imagePath,
                  ),
                )),
              ],
            ),
          );
        }
    );
  }
}