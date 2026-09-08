import 'package:flutter/material.dart';

class CharizardPage extends StatelessWidget {
  const CharizardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB11226),
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
              height: 440,
              decoration: const BoxDecoration(
                  color: Color(0xFFB11226),
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
                          Text('Charizard', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                          Text('#006', style: TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          "assets/images/charizard.gif",
                          height: 260,
                          width: 260,
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
                  const Text("Tipo", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildTypeChip("Fire", Colors.orange.shade800),
                      const SizedBox(width: 8),
                      _buildTypeChip("Flying", Colors.indigo.shade300),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text("Descrição", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Text(
                      "Ele cospe fogo que é quente o suficiente para derreter rochas. É conhecido por causar incêndios florestais sem querer.",
                      style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                    ),
                  ),
                  const Text("Habilidade", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Row(
                      children: [
                        Icon(Icons.local_fire_department, color: Colors.orange),
                        SizedBox(width: 12),
                        Text("Blaze (Chama)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  const Text("Moves", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildTypeChip("Flamethrower", Colors.orange),
                      _buildTypeChip("Air Slash", Colors.indigo.shade200),
                      _buildTypeChip("Dragon Pulse", Colors.blueGrey),
                      _buildTypeChip("Solar Beam", Colors.green),
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