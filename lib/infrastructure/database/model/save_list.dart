import 'package:hive/hive.dart';

part 'save_list.g.dart';

@HiveType(typeId: 1)
class SaveNewsList{
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final String content;
  @HiveField(5)
  final String author;
  @HiveField(6)
  final String sourceName;
  @HiveField(7)
  final String formattedDate;
  @HiveField(8)
  final String url;

  SaveNewsList({required this.image, required this.title, required this.description, required this.content, required this.author, required this.sourceName, required this.formattedDate, this.id, required this.url});
}