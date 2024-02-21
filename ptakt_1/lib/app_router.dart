// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import 'presentation/screens/home_screen.dart';
// import 'presentation/screens/profile_screen.dart';
// import 'presentation/screens/search_screen.dart';
// import 'presentation/screens/settings_screen.dart';

// class AppRouter {
//   static final router = GoRouter(
//     initialLocation: '/',
//     errorPageBuilder: (context, state) => MaterialPage(
//       child: Scaffold(
//         body: Center(child: Text('Page not found')),
//       ),
//     ),
//     parser: GoRouterStateParser(
//       stateToMap: (state) => {'state': state},
//       mapToState: (map) => map.containsKey('state') ? map['state'] : null,
//     ),
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => HomeScreen(
//           selectedCategory: 'YourSelectedCategoryValue',
//           categories: ['Category 1', 'Category 2', 'Category 3'],
//         ),
//       ),
//       GoRoute(
//         path: '/search',
//         builder: (context, state) => SearchScreen(),
//       ),
//       GoRoute(
//         path: '/profile',
//         builder: (context, state) => ProfileScreen(),
//       ),
//       GoRoute(
//         path: '/settings',
//         builder: (context, state) => SettingsScreen(),
//       ),
//     ],
//   );
// }
