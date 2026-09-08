import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1B3D), // Azul escuro do Greninja
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
                  color: Color(0xFF0B1B3D),
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
                          Text('Greninja', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                          Text('#658', style: TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          "assets/images/eugreninja.gif",
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
                      _buildTypeChip("Water", Colors.blue),
                      const SizedBox(width: 8),
                      _buildTypeChip("Dark", Colors.purple.shade900),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text("Descrição", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: const Text(
                      "Esquivo como um ninja, Greninja desestabiliza seus oponentes com seus movimentos velozes. Ele pode comprimir água em shurikens, lançando-as com força suficiente para cortar metal.",
                      style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                    ),
                  ),
                  const Text("Habilidade", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    child: Row(
                      children: [
                        const Icon(Icons.flash_on, color: Colors.blue),
                        const SizedBox(width: 12),
                        const Text("Proteana (habilidade oculta)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  const Text("Moves", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildTypeChip("Hydro Pump", Colors.blue),
                      _buildTypeChip("Blizzard", Colors.lightBlueAccent),
                      _buildTypeChip("Psyshock", Colors.pink),
                      _buildTypeChip("Dark Pulse", Colors.purple.shade900),
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