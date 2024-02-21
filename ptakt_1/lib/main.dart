// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//   List<String> categories = ['Category 1', 'Category 2', 'Category 3'];
//   String selectedCategory = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Example'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {
//               _showPopupMenu(context);
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.info),
//             onPressed: () {
//               _showAlertDialog(context);
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               child: Text('Drawer Header'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _navigateTo(0);
//               },
//             ),
//             ListTile(
//               title: Text('Search'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _navigateTo(1);
//               },
//             ),
//             ListTile(
//               title: Text('Profile'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _navigateTo(2);
//               },
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           _navigateTo(index);
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//       body: _buildPage(_currentIndex, categories),
//     );
//   }

//   void _navigateTo(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   Widget _buildPage(int index, List<String> categories) {
//     switch (index) {
//       case 0:
//         return HomeScreen(
//           selectedCategory: selectedCategory,
//           categories: categories,
//         );
//       case 1:
//         return SearchScreen();
//       case 2:
//         return ProfileScreen();
//       default:
//         return Container();
//     }
//   }

//   void _showPopupMenu(BuildContext context) {
//     // Implement the logic for showing PopupButtonMenu
//   }

//   void _showAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Information'),
//           content: Text('This is some information.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   late final String selectedCategory;
//   final List<String> categories;

//   HomeScreen({required this.selectedCategory, required this.categories});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Wrap(
//               spacing: 8.0,
//               children: widget.categories.map((category) {
//                 return FilterChip(
//                   label: Text(category),
//                   selected: widget.selectedCategory == category,
//                   onSelected: (isSelected) {
//                     setState(() {
//                       widget.selectedCategory = isSelected ? category : '';
//                       // Add logic for filtering by category
//                     });
//                   },
//                 );
//               }).toList(),
//             ),
//             Text('Content of Home Page'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search Page'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               showSearch(
//                 context: context,
//                 delegate: CustomSearchDelegate(),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Content of Search Page'),
//       ),
//     );
//   }
// }

// class CustomSearchDelegate extends SearchDelegate<String> {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     // Implement the search results UI
//     return Container();
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // Implement the suggestions UI based on the current query
//     return Container();
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 200.0,
//             floating: false,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('Profile Details'),
//               background: Image.network(
//                 'https://redakcia-oi.ru/images/joomgallery/----------------------------------------------------------------------------------------------------------------------------------------------------000000000000000000067037bf334b6d3d0.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'presentation/screens/home_screen.dart';
import 'presentation/screens/search_screen.dart';
import 'presentation/screens/profile_screen.dart';
import 'presentation/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  errorPageBuilder: (context, state) => MaterialPage(
    child: Scaffold(body: Center(child: Text('Page not found'))),
  ),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(categories: [], selectedCategory: '',), // Changed to use const for better performance
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) =>  SearchScreen(), // Changed to use const for better performance
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) =>  ProfileScreen(), // Changed to use const for better performance
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) =>  SettingsScreen(), // Changed to use const for better performance
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
}

