import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Chat', style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.send), onPressed: () {}),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=$index'),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text('User $index', style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: Divider()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 10}')),
                      title: Text('User ${index + 10}', style: const TextStyle(fontWeight: FontWeight.bold)),
                      trailing: const Icon(Icons.more_vert),
                    ),
                    Container(
                      height: 300,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
                    ),
                    Row(
                      children: [
                        IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
                        IconButton(icon: const Icon(Icons.comment_outlined), onPressed: () {}),
                        IconButton(icon: const Icon(Icons.send), onPressed: () {}),
                        const Spacer(),
                        IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('Liked by User 1 and 42 others', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      child: Text('User 10 This is a great post! #socialchat'),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
