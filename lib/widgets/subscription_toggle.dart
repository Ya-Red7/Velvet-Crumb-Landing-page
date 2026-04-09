import 'package:flutter/material.dart';
import 'package:velvet_crumb_landing/core/constants.dart';
import '../core/theme.dart';

class SubscriptionToggle extends StatelessWidget{
  final SubscriptionPlan currentPlan;
  final Function(SubscriptionPlan) onPlanChanged;

  const SubscriptionToggle({
    super.key,
    required this.currentPlan,
    required this.onPlanChanged,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      width: 450,
      height: 50,
      decoration: BoxDecoration(
        color: VelvetTheme.charcoal,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: VelvetTheme.goldAccent.withOpacity(0.3)),
      ),
      child: Stack(
        children:[
          AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            alignment: _getAlignment(),
            child: Container(
              width: 150,
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: VelvetTheme.goldAccent,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Row(
            children: [
              _buildToggleOption("Monthly", SubscriptionPlan.monthly),
              _buildToggleOption("6-Month", SubscriptionPlan.sixMonth),
              _buildToggleOption("Annual", SubscriptionPlan.annual),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildToggleOption(String label, SubscriptionPlan plan){
    bool isSelected = currentPlan == plan;
    return Expanded(
      child: GestureDetector(
        onTap: () => onPlanChanged(plan),
        child: Container(
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected? Colors.black: Colors.white70,
              fontWeight: isSelected? FontWeight.bold: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  Alignment _getAlignment() {
    switch (currentPlan) {
      case SubscriptionPlan.monthly:
        return Alignment.centerLeft;
      case SubscriptionPlan.sixMonth:
        return Alignment.center;
      case SubscriptionPlan.annual:
        return Alignment.centerRight;
    }
  }
}