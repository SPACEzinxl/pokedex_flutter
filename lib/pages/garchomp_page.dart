import 'package:flutter/material.dart';
import '../styles/home_style.dart';

class GarchompPage extends StatelessWidget {
  const GarchompPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A5F),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 480,
              decoration: const BoxDecoration(
                  color: Color(0xFF1E3A5F),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              child: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Garchomp', style: HomeStyles.nameStyle),
                          Text('#445', style: HomeStyles.numberStyle),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          "assets/images/garchomp.gif",
                          height: 300,
                          width: 300,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                          isAntiAlias: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Tipo", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildTypeChip("Dragon", Colors.indigo),
                      const SizedBox(width: 8),
                      _buildTypeChip("Ground", Colors.orange.shade400),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text("Descrição", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Text(
                      "Quando ele encolhe suas asas e corre, consegue voar em velocidade sônica, rivalizando com jatos militares.",
                      style: HomeStyles.descriptionStyle,
                    ),
                  ),
                  const Text("Habilidade", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Row(
                      children: [
                        Icon(Icons.shield, color: Colors.indigo),
                        SizedBox(width: 12),
                        Text("Sand Veil / Rough Skin", style: HomeStyles.infoText),
                      ],
                    ),
                  ),
                  const Text("Moves", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildTypeChip("Earthquake", Colors.orange),
                      _buildTypeChip("Outrage", Colors.indigo.shade800),
                      _buildTypeChip("Swords Dance", Colors.grey),
                      _buildTypeChip("Stone Edge", Colors.amber.shade800),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTypeChip(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
    );
  }

  Widget _buildInfoCard({required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      child: child,
    );
  }
}