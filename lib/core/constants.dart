
class Ingredient{
  final String name;
  final String notes;
  final String imagePath;
  final double top;
  final double left;

  Ingredient({
    required this.name,
    required this.notes,
    required this.imagePath,
    required this.top,
    required this.left,
});
}

final List<Ingredient> mysteryIngredients = [
  Ingredient(
    name: "Sea salt crystals",
    notes: "Hand-harvested fleur de sel, providing a sharp contrast to the rich ganache",
    imagePath: "assets/images/salt.png",
    top: 0.2, left:0.15
  ),
  Ingredient(
    name: "Cocoa nibs",
    notes: "Raw Ghanaian cocoa nibs for an earthy texture",
    imagePath: "assets/images/cocoa.png",
    top: 0.6, left:0.7,
  ),
  Ingredient(
      name: "Sea salt crystals",
      notes: "Hand-harvested fleur de sel, providing a sharp contrast to the rich ganache",
      imagePath: "assets/images/salt.png",
      top: 0.2, left:0.15
  ),
  Ingredient(
    name: "Cocoa nibs",
    notes: "Raw Ghanaian cocoa nibs for an earthy texture",
    imagePath: "assets/images/cocoa.png",
    top: 0.6, left:0.7,
  )
];

enum SubscriptionPlan{monthly, sixMonth, annual}

class PriceData{
  final String title;
  final String price;
  final String description;
  final String? savingBadge;

  PriceData({
    required this.title,
    required this.price,
    required this.description,
    this.savingBadge,
  });
}
Map<SubscriptionPlan, List<PriceData>> pricingTiers = {
  SubscriptionPlan.monthly: [
    PriceData(title: "The Taster", price: "\$19.99",description: "Month-to-Month flexibility"),
    PriceData(title: "The Curator", price: "\$29.99", description: "Most popular box")
  ],

  SubscriptionPlan.sixMonth: [
    PriceData(title: "The Taster", price: "\$39",description: "pre-paid 6 months flexibility"),
    PriceData(title: "The Curator", price: "\$49.99", description: "Most popular box")
  ],

  SubscriptionPlan.annual: [
    PriceData(title: "The Taster", price: "\$77.99",description: "1 year flexibility"),
    PriceData(title: "The Curator", price: "\$88.99", description: "Most popular box")
  ]
};