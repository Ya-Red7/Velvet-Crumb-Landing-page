This `README.md` is designed to match the high-end, boutique aesthetic of the brand. It covers the setup, the tech stack choice, and the specific interactive features you implemented.

```markdown
# Velvet Crumb Curators: Midnight Macarons 

A high-end, sensory-focused Flutter Web landing page for the launch of the "Midnight Macarons" mystery subscription box. This project features interactive ingredient exploration, dynamic pricing tiers, and a luxury "Dark Mode" aesthetic.

## Key Features

- **Interactive Ingredient Explorer**: A custom-animated component where users can discover "blind-taste" flavor notes by interacting with floating ingredients (Sea Salt, Cocoa Nibs, etc.).
- **Dynamic Subscription Toggle**: A sophisticated, gold-accented pricing component that switches between Monthly, 6-Month, and Annual tiers with real-time price updates.
- **Luxury Visual Language**: A bespoke theme built using a "Midnight & Gold" palette, high-contrast photography, and premium serif typography.
- **Responsive Architecture**: Seamlessly transitions from an expansive desktop experience to a thumb-friendly mobile interface using Flutter's layout constraints.
- **Micro-interactions**: Custom whisking loading animations and smooth-scroll transitions powered by `flutter_animate`.

##  Tech Stack

- **Framework**: [Flutter Web](https://flutter.dev/multi-platform/web)
- **Language**: Dart
- **Rendering Engine**: CanvasKit (for 60FPS high-fidelity animations)
- **Animation Suite**: `flutter_animate` & `simple_animations`
- **Typography**: Google Fonts (Playfair Display & Montserrat)

## Getting Started

### Prerequisites
- Flutter SDK (Stable Channel)
- Android Studio / VS Code
- Chrome or Edge Browser

### Installation

1. **Clone the repository**:
   ```bash
   git clone [https://github.com/your-username/velvet_crumb_landing.git](https://github.com/your-username/velvet_crumb_landing.git)
   cd velvet_crumb_landing
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the project**:
   For the best visual experience (CanvasKit renderer), run:
   ```bash
   flutter run -d chrome --web-renderer canvaskit
   ```

## 📦 Project Structure

```text
lib/
├── core/       # Global theme definitions and pricing constants
├── widgets/    # Reusable UI components (Toggle, Ingredient Items)
├── sections/   # Individual page sections (Hero, Explorer, Pricing)
└── main.dart   # App entry and responsive scaffold
```

## 🎯 Acceptance Criteria Met

- [x] **Ingredient Explorer**: Functions without lag on desktop and mobile browsers.
- [x] **Subscription Toggle**: Correctly updates all values without page refreshes.
- [x] **Visual Aesthetics**: Adheres to the "Dark Mode Luxury" brief with gold accents.
- [x] **Responsiveness**: Fluid layout adjustments for varying screen sizes.
- [x] **Clean Code**: Follows standard Dart/Flutter linting rules and modular architecture.

---

**Developed for Velvet Crumb Curators — 2026 Pre-Order Campaign**


### 💡 Final Steps for Submission:
1.  **Repository**: Push this to your GitHub.
2.  **Live Link**: Build the project (`flutter build web`) and host it on Firebase or Netlify to get that Live Demo URL.
3.  **Recording**: Record your 60-second clip showing the hover effects and the pricing toggle.

**Are you ready to zip the project and send it off, or do you need a template for the Visual Documentation recording?**