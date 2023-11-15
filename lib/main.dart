import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/cubit/category_cubit.dart';
import 'package:melissa_store/cubit/drawer_cubit.dart';
import 'package:melissa_store/data/local/storage_repository.dart';
import 'package:melissa_store/ui/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DrawerCubit()),
        BlocProvider(create: (context) => CategoryCubit()),
      ],
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: App(),
      ),
    );
  }
}
