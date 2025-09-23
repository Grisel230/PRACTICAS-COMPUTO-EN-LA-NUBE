import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("PRACTICA 06"),
          backgroundColor: Colors.purple,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.accessibility_new)),
              Tab(icon: Icon(Icons.mail)),
              Tab(icon: Icon(Icons.notifications_active)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "ACCESIBILIDAD",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.purple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12),
                  Icon(
                    Icons.accessibility_new,
                    size: 120,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
            const Center(
              child: Icon(Icons.mail, size: 120, color: Colors.black87),
            ),
            const Center(
              child: Icon(
                Icons.notifications_active,
                size: 120,
                color: Colors.black87,
              ),
            ),
            const Center(
              child: Icon(Icons.settings, size: 120, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
