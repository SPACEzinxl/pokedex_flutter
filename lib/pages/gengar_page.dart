import 'package:flutter/material.dart';
import '../styles/home_style.dart';

class GengarPage extends StatelessWidget {
  const GengarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A3B63),
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
                color: Color(0xFF4A3B63),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Gengar', style: HomeStyles.nameStyle),
                          Text('#094', style: HomeStyles.numberStyle),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          "assets/images/gengar.gif",
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
                      _buildTypeChip("Ghost", Colors.deepPurple),
                      const SizedBox(width: 8),
                      _buildTypeChip("Poison", Colors.purple),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text("Descrição", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Text(
                      "Sob a luz da lua cheia, as sombras começam a se mover e rir. Isso é obra do Gengar, que finge ser a sombra de sua vítima.",
                      style: HomeStyles.descriptionStyle,
                    ),
                  ),
                  const Text("Habilidade", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Row(
                      children: [
                        Icon(Icons.visibility, color: Colors.deepPurple),
                        SizedBox(width: 12),
                        Text("Cursed Body (Corpo Amaldiçoado)", style: HomeStyles.infoText),
                      ],
                    ),
                  ),
                  const Text("Moves", style: HomeStyles.sectionTitle),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildTypeChip("Shadow Ball", Colors.deepPurple.shade700),
                      _buildTypeChip("Sludge Bomb", Colors.purpleAccent),
                      _buildTypeChip("Dazzling Gleam", Colors.pink.shade300),
                      _buildTypeChip("Hypnosis", Colors.blue.shade300),
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
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
      ),
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
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}