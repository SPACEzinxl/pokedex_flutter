import 'package:flutter/material.dart';

class TreinadorStyle {
  // Cores
  static const Color primaryRed = Colors.red;
  static final Color cardRed = Colors.red[400]!;
  static final Color backgroundColor = Colors.grey[100]!;
  static const Color accentAmber = Colors.amber;

  // Estilos de Texto
  static const TextStyle appBarTitle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );

  static const TextStyle trainerName = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle trainerRegion = TextStyle(
    fontSize: 16,
    color: Colors.white70,
  );

  static const TextStyle trainerId = TextStyle(
    fontSize: 14,
    fontFamily: 'monospace',
    color: Colors.white60,
  );

  static const TextStyle trainerLevel = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const TextStyle pokemonName = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  // Decorações
  static BoxDecoration levelBadgeDecoration = BoxDecoration(
    color: accentAmber,
    borderRadius: BorderRadius.circular(20),
  );

  static BoxDecoration badgeCircleDecoration = BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    border: Border.all(color: accentAmber, width: 2),
    boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
  );
}