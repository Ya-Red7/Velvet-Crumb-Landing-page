import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../core/theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: VelvetTheme.midnight,
        image: DecorationImage(
          image: AssetImage('assets/images/hero_macaron.png'),
          fit: BoxFit.cover,
          opacity: 0.6,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "MIDNIGHT\nMACARONS",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ).animate().fadeIn(duration: 800.ms).slideY(begin: 0.2, end: 0),

          const SizedBox(height: 24),

          Text(
            "A SENSORY MYSTERY DELIVERED MONTHLY.",
            style: Theme.of(context).textTheme.labelLarge,
          ).animate().fadeIn(delay: 400.ms),

          const SizedBox(height: 60),

          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: VelvetTheme.goldAccent),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            child: const Text("EXPLORE THE PROFILE"),
          ).animate().fadeIn(delay: 800.ms).scale(begin: const Offset(0.8, 0.8)),

          const SizedBox(height: 100),
          const Icon(Icons.keyboard_arrow_down, color: VelvetTheme.goldAccent)
              .animate(onPlay: (c) => c.repeat())
              .moveY(begin: 0, end: 10, duration: 1.seconds),
        ],
      ),
    );
  }
}