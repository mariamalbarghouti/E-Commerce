// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trail/main.dart';

// class HomePageController extends GetxController {
//   List<Model> list = [];
//   ScrollController controller = ScrollController();
//   int listLength = 4;
//   @override
//   void onInit() {
//     //  getData();
//     generateList();
//     addItems();
//     controller.addListener(addItems);
//     super.onInit();
//   }
//   //   void getData() async {
// //     final listOfData = await _provider.getData(_pageNo);
// //     moviesList.assignAll(listOfData);
// //     isLoading.value = false;
// //   }
//   addItems() async {

//     // if reaching the end
//     if (controller.offset >= controller.position.maxScrollExtent &&
//         !controller.position.outOfRange) {
//           // Loading
//           // getDate(++_page)
//           //  if (listOfData.isEmpty) {
//           //   loadingState.value = LoadingState(
//           //    loadingType: LoadingType.completed,
//           //  completed: "there is no data");
//           //  } else {
//           //     moviesList.addAll(listOfData);
//           //     loadingState.value = LoadingState(loadingType: LoadingType.loaded);
//           // }
//       for (int i = 0; i < 14; i++) {
//         listLength++;
//         list.add(Model(name: (listLength).toString()));
//         print("object $listLength");
//         update();
//       }
//     }
//     // });
//   }

//   generateList() {
//     list = List.generate(
//         listLength, (index) => Model(name: (index + 1).toString()));
//   }
// }
