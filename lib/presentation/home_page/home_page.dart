import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/providers/providers.dart';
import 'package:flutter_assessment/presentation/dashboard_page/dashboard_page.dart';
import 'package:flutter_assessment/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final List<Widget> pages = [
    const Center(),
    const Center(),
    const DashboardPage(),
    const Center(),
    const Center(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: currentIndex,
        onItemSelected: (int index) {
          ref.read(bottomNavIndexProvider.notifier).state = index;
        },
      ),
      body: pages[currentIndex],
    );
  }
}
