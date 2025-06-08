import 'package:flutter/material.dart';
import 'package:hlw1/Singup.dart';
import 'package:hlw1/app.dart';
import 'package:hlw1/videoPlayer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Individual like states for each post
  List<bool> postLikeStates = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40), // Status bar padding
              // Header Section
              _buildHeader(),

              const SizedBox(height: 16),

              // Search Box
              _buildSearchBox(),

              const SizedBox(height: 16),

              // Stories Section
              _buildStoriesSection(),

              const SizedBox(height: 16),

              // Posts Section
              _buildPostsSection(),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
          ),
        ),
        const SizedBox(width: 12),
        const Text(
          "GojoBook",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Videoplayer()),
            );
          },
          icon: const Icon(Icons.video_camera_back, color: Colors.white),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Messener()),
            );
          },
          icon: const Icon(Icons.chat_bubble, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildSearchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(25),
      ),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildStoriesSection() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildStoryCard(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMkoVGdRpgB_hyPyXc1-XYv_lvq8ddJNAZIg&s",
            "Gojo",
          ),
          _buildStoryCard(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZQNshsAzBPfly6ORQ_svx8MU7hFXIi61zg&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3FBkP0UWLe9p3tBt65YFPvKjajdG4Qqq7pQ&s",
            "Aizen",
          ),
          _buildStoryCard(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIeR8T1nnEj5nj7z-PkwsSw05YP9AAuBsSxA&s",
            "Seth Rollins",
          ),
        ],
      ),
    );
  }

  Widget _buildStoryCard(String profileImage, String storyImage, String name) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          CircleAvatar(radius: 20, backgroundImage: NetworkImage(profileImage)),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(storyImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildPostsSection() {
    return Column(
      children: [
        // Aizen posts
        for (int i = 0; i < 6; i++)
          _buildPostCard(
            profileImage:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZQNshsAzBPfly6ORQ_svx8MU7hFXIi61zg&s",
            username: "Aizen",
            postText: "What you people think about My New pic",
            postImage:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZQNshsAzBPfly6ORQ_svx8MU7hFXIi61zg&s",
            postIndex: i,
          ),
        // Seth Rollins post
        _buildPostCard(
          profileImage:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsYsyqODdpSIiBZaX7QxCIv7N-KXUhuDNxHA&s",
          username: "Seth Rollins",
          postText: "The new look is come",
          postImage:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsYsyqODdpSIiBZaX7QxCIv7N-KXUhuDNxHA&s",
          postIndex: 6,
        ),
      ],
    );
  }

  Widget _buildPostCard({
    required String profileImage,
    required String username,
    required String postText,
    required String postImage,
    required int postIndex,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post header
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(profileImage),
                ),
                const SizedBox(width: 12),
                Text(
                  username,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Post text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              postText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),

          const SizedBox(height: 12),

          // Post image
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(postImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Post actions
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      postLikeStates[postIndex] = !postLikeStates[postIndex];
                    });
                  },
                  icon: Icon(
                    Icons.thumb_up,
                    color:
                        postLikeStates[postIndex] ? Colors.blue : Colors.grey,
                  ),
                ),
                const Text("Like"),
                const SizedBox(width: 20),
                const Icon(Icons.comment, color: Colors.grey),
                const SizedBox(width: 4),
                const Text("Comment"),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share, color: Colors.grey),
                ),
                const Text("Share"),
                const Spacer(),
                const Icon(Icons.bookmark_border, color: Colors.grey),
                const SizedBox(width: 4),
                const Text("Save"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box, color: Colors.white),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myapp()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
