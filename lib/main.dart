import 'package:demo_second_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Color(0xFF3498DB)), // rgba(52, 152, 219, 1)
        useMaterial3: false,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        title: const Text('Flutter App ',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ), //This is app bar title | it will remain same

      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Menu')),
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
            ],
          ),
        ),
      ),
      
      body: const HomePage(),    //This is body part | It will change based on bottom navigation bar
 
      floatingActionButton: FloatingActionButton(
        onPressed: () => {debugPrint('Floating Action Button Pressed')},
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home'),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile'),
        ],

        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });

        },
        selectedIndex: currentPage,
      ),
    );
  }
}
