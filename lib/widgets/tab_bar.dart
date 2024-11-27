import 'package:flutter/material.dart';
import 'package:project_flutter/widgets/cart.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PostList(), // Pestaña "Para ti"
        PostList(), // Pestaña "Siguiendo"
      ],
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PostCard(
            profileImage:
                'assets/image/pexels-chevanon-1108099.jpg', // Imagen de perfil
            username: 'PetCo', // Nombre del usuario
            alias: 'PetColombia', // Alias o username
            timestamp: 'Nov 27', // Tiempo de publicación
            content: 'My Pets.', // Contenido del post
            image:
                'assets/image/pexels-chevanon-1108099.jpg', // Imagen del post
            likes: 2000, // Likes
            retweets: 12, // Retweets
            comments: 100,
            views: 3000);
      },
    );
  }
}
