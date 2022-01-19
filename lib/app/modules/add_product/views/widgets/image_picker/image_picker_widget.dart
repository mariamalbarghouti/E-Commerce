import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:trail/app/modules/add_product/views/widgets/image_picker/widgets/selected_images.dart';

// Image Picker Widget
class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async =>
              await Get.find<AddProductController>().pickImgFromGallery(),
          icon: const Icon(Icons.add_a_photo),
        ),
        const Expanded(
          flex: 5,
          child: SelectedImagesWidget(),
        ),
      ],
    );
  }
}

// import 'dart:async';
// import 'package:multi_image_picker2/multi_image_picker2.dart';

// class _MyAppState extends State<MyApp> {
//   List<Asset> images = <Asset>[];
//   String _error = 'No Error Dectected';

//   Widget buildGridView() {
//     return GridView.count(
//       crossAxisCount: 3,
//       padding: EdgeInsets.only(top: 10),
//       children: List.generate(images.length, (index) {
//         print("Assets= ${images[index].name}");
//         Asset asset = images[index];
//         return Stack(
//           clipBehavior: Clip.none,
//           children: [
//           Card(
//             color: Colors.amber,
//             clipBehavior: Clip.hardEdge,
//             child: AssetThumb(
//               asset: asset,
//               width: 300,
//               height: 300,
//             ),
//           ),
//            Positioned(
//             right: 0,
//             top: -5,
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                 images.removeAt(index);

//                 });
//               },
//               child:const CircleAvatar(
//                 // width: 25,
//                 // height: 25,
//                 // color: Colors.red,

//                 child: Icon(Icons.delete_outlined,size: 18,),
//                 backgroundColor: Colors.red,
//                 radius: 12,
//               ),
//             ),
//           ),
//         ]);
//       }),
//     );
//   }

//   Future<void> loadAssets() async {
//     List<Asset> resultList = <Asset>[];
//     String error = 'No Error Detected';

//     try {
//       resultList = await MultiImagePicker.pickImages(
//         maxImages: 5,
//         enableCamera: true,
//         selectedAssets: images,
//         materialOptions: const MaterialOptions(
//           actionBarColor: "#000000",
//           actionBarTitle: "Select Image",
//           allViewTitle: "All Photos",
//           // actionBarTitleColor: '#090909',
//           useDetailsView: false,
//           selectCircleStrokeColor: "#000000",
//         ),
//       );
//     } on Exception catch (e) {
//       error = e.toString();
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       images = resultList;
//       _error = error;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Center(child: Text('Error: $_error')),
//             ElevatedButton(
//               child: const Text("Pick images"),
//               onPressed: loadAssets,
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: buildGridView(),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
