import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: Colors.primaries[index % Colors.primaries.length].shade800,
                child: const Center(
                  child: Icon(Icons.play_circle_outline, size: 80, color: Colors.white54),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 30}'),
                        ),
                        const SizedBox(width: 8),
                        Text('@creator_$index', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            minimumSize: const Size(0, 30),
                          ),
                          child: const Text('Follow', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('This is an amazing reel! #trending #fun', style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Icon(Icons.music_note, color: Colors.white, size: 16),
                        SizedBox(width: 4),
                        Text('Original Audio - creator', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 16,
                child: Column(
                  children: [
                    IconButton(icon: const Icon(Icons.favorite, color: Colors.white, size: 30), onPressed: () {}),
                    const Text('1.2k', style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 16),
                    IconButton(icon: const Icon(Icons.comment, color: Colors.white, size: 30), onPressed: () {}),
                    const Text('342', style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 16),
                    IconButton(icon: const Icon(Icons.share, color: Colors.white, size: 30), onPressed: () {}),
                    const Text('Share', style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 16),
                    IconButton(icon: const Icon(Icons.more_vert, color: Colors.white, size: 30), onPressed: () {}),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
