import 'package:flutter/material.dart';
import 'package:tourify/data/wisata_data.dart';
import 'package:tourify/models/wisata.dart';
import 'package:tourify/screens/destinationdetail_screen.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Wisata> _searchResults = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    
    setState(() {
      if (query.isEmpty) {
        _isSearching = false;
        _searchResults = [];
      } else {
        _isSearching = true;
        _searchResults = wisataList.where((wisata) {
          return wisata.name.toLowerCase().contains(query) || 
                 wisata.location.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Wisata> sortedByRating = List.from(wisataList);
    sortedByRating.sort((a, b) => b.rating.compareTo(a.rating)); 
    
    final popularList = sortedByRating.take(5).toList();

    List<Wisata> highRated = sortedByRating.skip(5).where((w) => w.rating >= 4.6).toList();
    
    highRated.shuffle();

    final trendingList = highRated.isNotEmpty 
        ? highRated.take(5).toList() 
        : sortedByRating.skip(5).take(5).toList();

    return Scaffold(
      backgroundColor: const Color(0xFF92B4A7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEADER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Serif',
                        color: Color(0xFF1E293B),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
                    ),
                  ],
                ),
                
                const SizedBox(height: 24),

                // SEARCH BAR
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search your destination',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      suffixIcon: Icon(Icons.search, color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // CONTENT
                _isSearching 
                    ? _buildSearchResults()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionHeader("Popular"),
                          const SizedBox(height: 16),
                          
                          SizedBox(
                            height: 260,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: popularList.length,
                              clipBehavior: Clip.none,
                              itemBuilder: (context, index) {
                                return _buildPopularCard(context, popularList[index]);
                              },
                            ),
                          ),

                          const SizedBox(height: 24),

                          _buildSectionHeader("Trending Places"),
                          const SizedBox(height: 16),
                          
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: trendingList.length,
                            itemBuilder: (context, index) {
                              return _buildTrendingCard(context, trendingList[index]);
                            },
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF1E293B),
      ),
    );
  }

  Widget _buildPopularCard(BuildContext context, Wisata wisata) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DestinationDetailScreen(wisata: wisata))),
      child: Container(
        width: 180,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(wisata.imageAsset.isNotEmpty ? wisata.imageAsset[0] : ''),
            fit: BoxFit.cover,
            onError: (exception, stackTrace) {}, 
          ),
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
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            
            Positioned(
              top: 12,
              right: 12,
              child: const Icon(Icons.favorite, color: Colors.white, size: 24),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wisata.name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 12, color: Colors.grey),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            wisata.location,
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingCard(BuildContext context, Wisata wisata) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DestinationDetailScreen(wisata: wisata))),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                wisata.imageAsset.isNotEmpty ? wisata.imageAsset[0] : '',
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(width: 70, height: 70, color: Colors.grey[300]),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wisata.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF1E293B)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          wisata.location,
                          style: const TextStyle(color: Colors.grey, fontSize: 13),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: Colors.orange.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 14),
                  const SizedBox(width: 4),
                  Text(wisata.rating.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.orange)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    if (_searchResults.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Text("No destinations found", style: TextStyle(color: Colors.white70)),
        ),
      );
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        return _buildTrendingCard(context, _searchResults[index]);
      },
    );
  }
}