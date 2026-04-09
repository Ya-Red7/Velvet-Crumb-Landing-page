import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../core/theme.dart';

class WhiskLoader extends StatelessWidget {
  const WhiskLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Icon(Icons.restaurant_menu, size: 60, color: VelvetTheme.goldAccent)
          .animate(onPlay: (c) => c.repeat())
          .rotate(duration: 1.seconds, curve: Curves.easeInOut)
          .then()
          .shake(duration: 500.ms),
    );
  }
}