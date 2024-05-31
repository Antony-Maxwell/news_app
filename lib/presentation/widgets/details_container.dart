
import 'package:flutter/material.dart';
import 'package:news_app/core/sizes/sizes.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
    required this.author,
    required this.description,
    required this.content,
    required this.url,
  });

  final String author;
  final String description;
  final String content;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$author  --',
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSizes.kHeight,
          SizedBox(
            width: double.infinity,
            child: Text(
              '$description $content',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          AppSizes.kHeight1,
          TextButton(onPressed: ()async{
            final link = Uri.parse(url);
            if(await canLaunchUrl(link)){
              await launchUrl(link);
            }
          }, child: const Text('click here for a detailed view'),),
          const SizedBox(
            height: 110,
          ),
          // SaveButton(isFromSaved: boolVal, image: image, title: title, description: description, content: content, author: author, source: source, formattedDate: formattedDate, id: id, url: url,),
        ],
      ),
    );
  }
}
