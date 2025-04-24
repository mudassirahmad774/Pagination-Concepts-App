// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:pagination_app/theme/theme_provider.dart';
// import 'package:provider/provider.dart';
//
// class ThemeHomeScreen extends StatefulWidget {
//   const ThemeHomeScreen({super.key});
//
//   @override
//   State<ThemeHomeScreen> createState() => _ThemeHomeScreenState();
// }
//
// class _ThemeHomeScreenState extends State<ThemeHomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:
//           Theme.of(context).colorScheme.surface, // Background of the screen
//       body: Center(
//         child: Container(
//           height: 400,
//           width: 250,
//           decoration: BoxDecoration(
//             color: Theme.of(context).colorScheme.primary,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Center(
//             // Center the child inside this container
//             child: Container(
//               height: 120,
//               width: 120,
//               decoration: BoxDecoration(
//                 color: Theme.of(context).colorScheme.secondary,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     Provider.of<ThemeProvider>(context, listen: false)
//                         .toggleTheme();
//                   },
//                   child: const Text(
//                     'Tap',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
