import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../core/theme.dart';

class IngredientItem extends StatefulWidget {
  final String name;
  final String notes;
  final String imagePath; // Add this line

  const IngredientItem({
    super.key,
    required this.name,
    required this.notes,
    required this.imagePath, // Add this line
  });

  @override
  State<IngredientItem> createState() => _IngredientItemState();
}

class _IngredientItemState extends State<IngredientItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // The Animated Image
          Container(
            width: 100, // Increased size for better visibility of textures
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: VelvetTheme.goldAccent.withValues(alpha: 0.1),
                  blurRadius: 30,
                  spreadRadius: 5,
                )
              ],
            ),
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.blur_on,
                  color: VelvetTheme.goldAccent,
                  size: 40
              ),
            ),
          )
              .animate(onPlay: (controller) => controller.repeat(reverse: true))
              .moveY(begin: -15, end: 15, duration: 2.5.seconds, curve: Curves.easeInOut),

          if (_isHovered)
            Positioned(
              top: 110,
              left: -50,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: 200,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: VelvetTheme.charcoal,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: VelvetTheme.goldAccent.withValues(alpha: 0.4)),
                    boxShadow: const [
                      BoxShadow(color: Colors.black87, blurRadius: 20, offset: Offset(0, 8))
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.name.toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: VelvetTheme.goldAccent,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.notes,
                        style: const TextStyle(fontSize: 12, color: Colors.white70, height: 1.4),
                      ),
                    ],
                  ),
                ),
              ).animate().fadeIn(duration: 200.ms).slideY(begin: 0.05, end: 0),
            ),
        ],
      ),
    );
  }
}