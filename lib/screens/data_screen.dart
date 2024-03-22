import 'package:flutter/material.dart';
import 'package:practica3_5b24/models/data.dart';
import 'package:practica3_5b24/screens/home_screen.dart';
import 'package:practica3_5b24/screens/images_screen.dart';
import 'package:practica3_5b24/screens/infinite_scroll_screen.dart';
import 'package:practica3_5b24/screens/notifications_screen.dart';
import 'package:practica3_5b24/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen({super.key, required this.datos});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int indexNavigation = 0;
  @override
  Widget build(BuildContext context) {
    String? flutter;
    if (widget.datos.gustoFlutter == true) {
      flutter = 'Sí';
    } else {
      flutter = 'No';
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Nombre: ',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            subtitle: Text(
              widget.datos.nombre!,
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              '¿A ${widget.datos.nombre} le gusta flutter?',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            subtitle: Text(
              flutter,
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.primaryColor,
        unselectedItemColor: AppTheme.primaryColor,
        selectedItemColor: Colors.amber,
        unselectedLabelStyle: const TextStyle(color: AppTheme.primaryColor),
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          ),
        ],
      ),
    );
  }

  openScreen(int index, BuildContext context) {
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());

    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(
            builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(
            builder: (context) => const NotificationsScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }
}
