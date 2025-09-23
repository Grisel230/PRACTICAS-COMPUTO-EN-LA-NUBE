import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final void Function(String titulo, Widget contenido)? onSelectMenu;

  const AppDrawer({super.key, this.onSelectMenu});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage('assets/stitch.jpg'),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Grisel Laurean',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Alumna',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.purple),
              title: const Text('Perfil'),
              hoverColor: Colors.purple.withValues(alpha: 0.1),
              onTap: () {
                if (onSelectMenu != null) {
                  onSelectMenu!(
                    'Perfil',
                    const Center(
                      child: Text(
                        'Contenido: Perfil',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.message, color: Colors.purple),
              title: const Text('Mensajería'),
              hoverColor: Colors.purple.withValues(alpha: 0.1),
              onTap: () {
                if (onSelectMenu != null) {
                  onSelectMenu!(
                    'Mensajería',
                    const Center(
                      child: Text(
                        'Contenido: Mensajería',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.purple),
              title: const Text('Dashboard'),
              hoverColor: Colors.purple.withValues(alpha: 0.1),
              onTap: () {
                if (onSelectMenu != null) {
                  onSelectMenu!(
                    'Dashboard',
                    const Center(
                      child: Text(
                        'Contenido: Dashboard',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.purple),
              title: const Text('Configuración'),
              hoverColor: Colors.purple.withValues(alpha: 0.1),
              onTap: () {
                if (onSelectMenu != null) {
                  onSelectMenu!(
                    'Configuración',
                    const Center(
                      child: Text(
                        'Contenido: Configuración',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Cerrar sesión'),
              hoverColor: Colors.red.withValues(alpha: 0.1),
              onTap: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sesión cerrada (ejemplo)'),
                    backgroundColor: Colors.purple,
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
