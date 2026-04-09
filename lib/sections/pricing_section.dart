import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/subscription_toggle.dart';
import '../core/theme.dart';

class PricingSection extends StatefulWidget{
  const PricingSection({super.key});
  
  @override
  State<PricingSection> createState() => _PricingSectionState();
}

class _PricingSectionState extends State<PricingSection>{
  SubscriptionPlan _selectedPlan = SubscriptionPlan.monthly;
  
  @override
  Widget build(BuildContext context) {
    final currentTiers = pricingTiers[_selectedPlan]!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: Column(
        children: [
          Text("choose your journey", style: Theme
              .of(context)
              .textTheme
              .labelLarge),
          const SizedBox(height: 40),
          SubscriptionToggle(
              currentPlan: _selectedPlan, onPlanChanged: (plan) =>
              setState(() {
                _selectedPlan = plan;
              })),
          const SizedBox(height: 60),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: currentTiers
                .map((tier) => _buildPriceCard(tier))
                .toList(),
          ),
        ],
      ),
    );
  }
  
  Widget _buildPriceCard(PriceData tier) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: VelvetTheme.charcoal,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: VelvetTheme.goldAccent.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          if (tier.savingBadge != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
              decoration: BoxDecoration(
                color: VelvetTheme.goldAccent,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(tier.savingBadge!, style: const TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold)),
            ),
          const SizedBox(height: 20),
          Text(tier.title, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 28)),
          const SizedBox(height: 10),
          Text(tier.price, style:const TextStyle(fontSize: 48, color: VelvetTheme.goldAccent, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: VelvetTheme.goldAccent,foregroundColor: Colors.black),
              child: const Text("PRE ORDER NOW")
          )
        ],
      )
    );
  }
}