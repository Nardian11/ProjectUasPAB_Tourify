import 'package:flutter/material.dart';
import 'package:tourify/models/wisata.dart';
import 'package:url_launcher/url_launcher.dart';

class DestinationDetailScreen extends StatefulWidget {
  final Wisata wisata;

  const DestinationDetailScreen({super.key, required this.wisata});

  @override
  State<DestinationDetailScreen> createState() => _DestinationDetailScreenState();
}

class _DestinationDetailScreenState extends State<DestinationDetailScreen> {
  
Future<void> _openMap() async {
    final lat = widget.wisata.latitude;
    final long = widget.wisata.longitude;
    final Uri googleMapsUrl = Uri.parse("https://www.google.com/maps/search/?api=1&query=$lat,$long");

    try {
      if (!await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $googleMapsUrl';
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not open map: $e")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black)
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text("Details", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. GAMBAR UTAMA & TOMBOL LOVE
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        widget.wisata.imageAsset.isNotEmpty ? widget.wisata.imageAsset[0] : '',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.wisata.isFavorite = !widget.wisata.isFavorite;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0,5))],
                      ),
                      child: Icon(
                        widget.wisata.isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: widget.wisata.isFavorite ? Colors.red : Colors.grey,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            // 2. JUDUL
            Text(
              widget.wisata.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: 'Serif',
                color: Color(0xFF1E293B),
              ),
            ),
            
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 20),
                const SizedBox(width: 5),
                Text(
                  "${widget.wisata.rating} (Reviews)",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(width: 15),
                const Icon(Icons.location_on, color: Colors.grey, size: 18),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    widget.wisata.location,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                    maxLines: 1, overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 3. DESKRIPSI
            const Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1E293B))),
            const SizedBox(height: 8),
            Text(
              widget.wisata.description,
              style: TextStyle(fontSize: 15, color: Colors.grey[600], height: 1.6),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 24),

            // 4. MAPS
            const Text("Location", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1E293B))),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: _openMap,
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(right: -20, top: -20, child: Icon(Icons.map_outlined, size: 150, color: Colors.white.withOpacity(0.05))),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.location_on, color: Color(0xFF6C63FF), size: 32),
                          const SizedBox(height: 8),
                          const Text("Tap to open Maps", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("Lat: ${widget.wisata.latitude}, Long: ${widget.wisata.longitude}", style: TextStyle(color: Colors.white60, fontSize: 10)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}