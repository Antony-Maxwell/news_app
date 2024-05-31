import 'package:flutter/material.dart';
import 'package:news_app/application/all_news/all_news_bloc.dart';
import 'package:news_app/application/search/search_bloc.dart';
import 'package:news_app/domain/core/di/injectable.dart';
import 'package:news_app/infrastructure/database/model/save_list.dart';
import 'package:news_app/presentation/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future <void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(SaveNewsListAdapter().typeId)){
    Hive.registerAdapter(SaveNewsListAdapter());
  }

  await Hive.openBox<SaveNewsList>('news_db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AllNewsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}