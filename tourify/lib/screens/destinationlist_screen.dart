import 'package:flutter/material.dart';
import 'package:tourify/data/wisata_data.dart';
import 'package:tourify/models/wisata.dart';
import 'package:tourify/widgets/item_card.dart';

class DestinationListScreen extends StatefulWidget {
  final String location;

  const DestinationListScreen({super.key, required this.location});

  @override
  State<DestinationListScreen> createState() => _DestinationListScreenState();
}

class _DestinationListScreenState extends State<DestinationListScreen> {
  // Daftar Kategori
  final List<String> _categories = [
    'All', 
    'Danau', 
    'Air Terjun', 
    'Hutan', 
    'Pulau', 
    'Pantai', 
    'Bukit', 
    'Gunung', 
    'Taman Nasional'
  ];

  String _selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    final List<Wisata> cityWisataList = wisataList
        .where((wisata) => wisata.location == widget.location)
        .toList();

    final List<Wisata> filteredList = _selectedCategory == 'All'
        ? cityWisataList
        : cityWisataList.where((wisata) {
            return wisata.category.toLowerCase() == _selectedCategory.toLowerCase();
          }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFF9AB6C1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Top destinations in ${widget.location}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Serif', color: Color(0xFF1E293B)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: _categories.map((category) {
                  final isSelected = category == _selectedCategory;
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0), 
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedCategory = category;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30),
                          border: isSelected ? Border.all(color: Colors.white, width: 2) : null,
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            color: const Color(0xFF1E293B),
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: filteredList.isEmpty
                  ? Center(
                      child: Text(
                        "No $_selectedCategory found in ${widget.location}",
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        return ItemCard(wisata: filteredList[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}