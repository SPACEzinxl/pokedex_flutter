import 'package:flutter/material.dart';
import 'charizard_page.dart';
import 'garchomp_page.dart';
import 'gardevoir_page.dart';
import 'gengar_page.dart';
import 'home_page.dart';
import 'tyranitar_page.dart';

class TrainerProfileScreen extends StatelessWidget {
  const TrainerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        title: const Text('Trainer Card', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF3B4CCA),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTrainerCard(),
            const SizedBox(height: 20),
            _buildBadgesSection(),
            const SizedBox(height: 20),
            _buildPokemonTeamSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTrainerCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF3B4CCA),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/perfil.png'),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Samuel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Fernando',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.star, color: Colors.white, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '115',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              onPressed: () {},
              icon: const Icon(Icons.emoji_events, color: Colors.white, size: 18),
              label: const Text(
                'KANTO LEAGUE CHAMPION',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadgesSection() {
    final List<String> badges = [
      'assets/images/insignia_rocha.png',
      'assets/images/insignia_cascata.png',
      'assets/images/insignia_trovao.png',
      'assets/images/insignia_lama.png',
      'assets/images/insignia_alma.png',
      'assets/images/insignia_vulcao.png',
      'assets/images/insignia_terra.png',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Kanto Badges (Insígnias de Kanto)',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: badges
                .map(
                  (badgePath) => Container(
                margin: const EdgeInsets.only(right: 10),
                width: 42,
                height: 42,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.amber, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Image.asset(
                  badgePath,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.shield, color: Colors.amber, size: 18),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildPokemonTeamSection(BuildContext context) {
    final List<Map<String, dynamic>> team = [
      {
        'name': 'Greninja',
        'image': 'assets/images/eugreninja.gif',
        'page': const HomePage(),
      },
      {
        'name': 'Charizard',
        'image': 'assets/images/charizard.gif',
        'page': const CharizardPage(),
      },
      {
        'name': 'Gengar',
        'image': 'assets/images/gengar.gif',
        'page': const GengarPage(),
      },
      {
        'name': 'Garchomp',
        'image': 'assets/images/garchomp.gif',
        'page': const GarchompPage(),
      },
      {
        'name': 'Tyranitar',
        'image': 'assets/images/tyranitar.gif',
        'page': const TyranitarPage(),
      },
      {
        'name': 'Gardevoir',
        'image': 'assets/images/gardevoir.gif',
        'page': const GardevoirPage(),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Battle Team',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemCount: team.length,
          itemBuilder: (context, index) {
            final pokemon = team[index];
            return InkWell(
              onTap: () {
                if (pokemon['page'] != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => pokemon['page']),
                  );
                }
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.03),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        pokemon['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      pokemon['name'],
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}