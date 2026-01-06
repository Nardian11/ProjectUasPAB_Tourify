import 'package:flutter/material.dart';
import 'package:tourify/models/wisata.dart';
import 'package:tourify/screens/destinationdetail_screen.dart';

class ItemCard extends StatelessWidget {
  final Wisata wisata;

  const ItemCard({super.key, required this.wisata});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DestinationDetailScreen(wisata: wisata),
          ),
        );
      },
      child: Container(
        height: 220, 
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Stack(
          children: [
            // 1. GAMBAR (Dengan Error Builder agar tidak crash)
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  wisata.imageAsset.isNotEmpty ? wisata.imageAsset[0] : '',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(Icons.broken_image, color: Colors.grey, size: 40),
                      ),
                    );
                  },
                ),
              ),
            ),

            // 2. GRADIENT OVERLAY
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                  ],
                  stops: const [0.6, 1.0],
                ),
              ),
            ),
            
            // 3. TEKS & INFO (Menggunakan Expanded untuk cegah Overflow)
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end, 
                children: [
                  // BAGIAN KIRI (Nama & Lokasi) - DIBUNGKUS EXPANDED
                  Expanded( 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Nama Tempat
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E293B).withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            wisata.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            maxLines: 1, 
                            overflow: TextOverflow.ellipsis, 
                          ),
                        ),
                        const SizedBox(height: 6),
                        // Lokasi
                        Row(
                          children: [
                            const Icon(Icons.location_on, color: Colors.white70, size: 14),
                            const SizedBox(width: 4),
                            Expanded( 
                              child: Text(
                                wisata.location,
                                style: const TextStyle(color: Colors.white70, fontSize: 12),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(width: 10), 

                  // BAGIAN KANAN (Rating)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          wisata.rating.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}