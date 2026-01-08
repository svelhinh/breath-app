import 'package:breath_app/core/routing/app_router.dart';
import 'package:breath_app/features/home/presentation/menu_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Home screen where user selects which exercise to do.
///
/// This screen will display a list of exercises for the user to choose from.
/// The user can then select an exercise to perform.
class HomeScreen extends StatelessWidget {
  /// Creates a new instance of [HomeScreen].
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => showModalBottomSheet<void>(
              context: context,
              builder: (_) => const MenuBottomSheet(),
            ),
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Paywall',
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: GestureDetector(
                onTap: () => context.pushNamed(AppRoute.exercise.name),
                child: const SizedBox(
                  height: 200,
                  child: Card(
                    color: Colors.white70,
                    child: Icon(Icons.image),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
