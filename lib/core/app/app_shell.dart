import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_todo_app/core/navigation/app_destination.dart';
import 'package:the_todo_app/core/providers/page_index_provider.dart';

class AppShell extends ConsumerWidget {
  AppShell({
    super.key,
    required this.appDestinations,
  }) : assert(appDestinations.isNotEmpty);

  final List<AppDestination> appDestinations;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    final pageIndexNotifier = ref.read(pageIndexProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: appDestinations[pageIndex].destination,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: [
          for (final destination in appDestinations)
            BottomNavigationBarItem(
              icon: Icon(destination.icon),
              label: destination.title,
            ),
        ],

        onTap: (index) => pageIndexNotifier.setPage(index),
      ),
    );
  }
}
