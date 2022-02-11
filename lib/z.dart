// import 'package:flutter/material.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';

// class HH extends StatefulWidget {
//   const HH({Key? key}) : super(key: key);

//   @override
//   State<HH> createState() => _HHState();
// }

// class _HHState extends State<HH> {
//   late FloatingSearchBarController floatingSearchBarController;
//   String? selectedTerm;
//   List<String> history = ["Flutter", "Karim", "Mariam"];
//   late List<String> filteredList;
//   //  = FloatingSearchBarController().obs;
//   @override
//   void initState() {
//     floatingSearchBarController = FloatingSearchBarController();
//     filteredList = history;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     floatingSearchBarController.dispose();
//     super.dispose();
//   }

//   bool isFound(query) => (history.contains(query)) ? true : false;
//   deleteFromHistory(query) {

//     history.removeWhere((element) => element.contains(query));
//   }

//   addSearch(query) {
//     // If Exsist
//     // Delete it then make it first
//     // Add it first
//     if (isFound(query)) {
//       // delete from history
//       deleteFromHistory(query);
//       // reorder the list
//       addSearch(query);
//     }
//     // Add Search
//     if (history.length < 5) {
//       history.add(query);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FloatingSearchBar(
//         debounceDelay: const Duration(milliseconds: 20),
//         actions: [
//           FloatingSearchBarAction.searchToClear(),
//         ],
//         hint: "Searching...",
//         title: Text(selectedTerm ?? "Search Bar"),
//         onQueryChanged: (query) {
//           selectedTerm = query;
//           setState(() {});
//         },
//         onSubmitted: (query) {
//           addSearch(query);
//         },
//         builder: (context, animation) => Container(

//         ),
//       ),
//     );
//   }
// }
