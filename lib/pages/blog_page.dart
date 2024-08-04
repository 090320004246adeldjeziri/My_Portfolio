import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Blog'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlogPost(
              title: 'First Blog Post',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada.',
              icon: FontAwesomeIcons.book,
              color: Colors.blueGrey[800],
            ),
            BlogPost(
              title: 'Second Blog Post',
              description:
                  'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.',
              icon: FontAwesomeIcons.pencilAlt,
              color: Colors.blueGrey[700],
            ),
            BlogPost(
              title: 'Third Blog Post',
              description:
                  'Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.',
              icon: FontAwesomeIcons.penNib,
              color: Colors.blueGrey[600],
            ),
          ],
        ),
      ),
    );
  }
}

class BlogPost extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color? color;

  BlogPost({
    required this.title,
    required this.description,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FaIcon(icon, color: Colors.white, size: 24.0),
                SizedBox(width: 10.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}