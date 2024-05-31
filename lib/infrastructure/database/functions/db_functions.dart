import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/infrastructure/database/model/save_list.dart';

ValueNotifier<List<SaveNewsList>> newsListNotifier = ValueNotifier([]);

void saveNews(SaveNewsList value, context)async{

  final newsDatabase = await Hive.openBox<SaveNewsList>('news_db');
  final _id = await newsDatabase.add(value);
  value.id = _id;
  newsListNotifier.value.add(value);
  newsListNotifier.notifyListeners();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Article saved successfully!'),
      duration: Duration(seconds: 2),
    ),
  );
  print('saved');
}

void getSavedNews()async{
  final newsDb = await Hive.openBox<SaveNewsList>('news_db');
  newsListNotifier.value.clear();

  newsListNotifier.value.addAll(newsDb.values);
  newsListNotifier.notifyListeners();
}

void deleteSavedNews(int id, BuildContext context)async{
  final newsDb = await Hive.openBox<SaveNewsList>('news_db');
  await newsDb.delete(id);
  getSavedNews();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Article removed successfully!'),
      duration: Duration(seconds: 2),
    ),
  );
  Navigator.pop(context);
}