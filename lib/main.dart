import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'sections/hero_section.dart';
import 'sections/explorer_section.dart';
import 'sections/pricing_section.dart';
import 'widgets/whisk_loader.dart';

void main() => runApp(const VelvetCrumbApp());

class VelvetCrumbApp extends StatelessWidget {
  const VelvetCrumbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Velvet Crumb Curators',
      debugShowCheckedModeBanner: false,
      theme: VelvetTheme.darkLuxury,
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) setState(() => _isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) return const Scaffold(body: WhiskLoader());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            IngredientExplorerSection(),
            PricingSection(),
            // Optional: Footer
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Text("© 2026 VELVET CRUMB CURATORS",
                  style: TextStyle(color: Colors.white24, fontSize: 10, letterSpacing: 2)),
            )
          ],
        ),
      ),
    );
  }
}