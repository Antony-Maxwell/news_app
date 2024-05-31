import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/details_container.dart';
import 'package:news_app/presentation/widgets/save_button.dart';

class DetailedScreen extends StatelessWidget {
  const DetailedScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.author,
      required this.content, required this.source, required this.formattedDate, required this.boolVal, required this.id, required this.url});

  final String image;
  final String title;
  final String description;
  final String author;
  final String content;
  final String source;
  final String formattedDate;
  final bool boolVal;
  final int id;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 380,
                  width: double.infinity,
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(100)),
                      alignment: Alignment.center,
                      child: const Center(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 15,
                  right: 15,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            DetailsContainer(author: author, description: description, content: content, url: url),
          ],
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: SaveButton(isFromSaved: boolVal, image: image, title: title, description: description, content: content, author: author, source: source, formattedDate: formattedDate, id: id, url: url,),
      )
    );
  }
}