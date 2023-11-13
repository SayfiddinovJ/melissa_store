import 'package:flutter/material.dart';
import 'package:melissa_store/data/local/storage_repository.dart';
import 'package:melissa_store/ui/auth/auth_screen.dart';
import 'package:melissa_store/ui/home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    String name = StorageRepository.getString('name');
    return name.isEmpty ? const AuthScreen() : const HomeScreen();
  }
}
