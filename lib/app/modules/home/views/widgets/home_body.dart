import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:trail/app/modules/home/controllers/home_controller.dart';

// Home Body
class HomeBody extends GetView<HomeController> {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      // On Success
      (state) => SmartRefresher(
        controller: controller.refresherController,
        scrollDirection: Axis.vertical,
        // on refresh
        // onRefresh: controller.refreshTheScreen,
        // on loading
        onLoading: controller.fetchNextPageOfProductsFromDB,
        enablePullDown: true,
        enablePullUp: true,
        // header style
        header: BezierHeader(
          bezierColor: Colors.blue,
          dismissType: BezierDismissType.ScaleToCenter,
        ),
        // footer style
        footer: ClassicFooter(
          // Go Up Fuction
          onClick: controller.goUp,
          noDataText: "No More Data Go Up",
          textStyle: const TextStyle(color: Colors.grey),
          noMoreIcon:
              const Icon(Icons.arrow_upward_outlined, color: Colors.grey),
        ),
        child: GridView.builder(
            // controller: controller.scrollingController.value,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
            ),
            itemCount: state?.length,
            itemBuilder: (context, index) {
              return Card(
                key: ValueKey(index),
                elevation: 2.0,
                color: Colors.amber,
                // If It Satisfy Logic Layer
                child: state![index].failureOption.isNone()
                    ? InkWell(
                        onTap: () async =>
                            await controller.goToMoreDetails(state[index]),
                        child: Stack(
                          fit: StackFit.expand,
                          clipBehavior: Clip.hardEdge,
                          children: [
                            // Image
                            FadeInImage.assetNetwork(
                              placeholder: 'assets/loading.gif',
                              image: state[index].pickedImages.getOrCrash()[0],
                              fit: BoxFit.cover,
                              width: 120,
                              height: 80,
                              imageErrorBuilder: (context, url, stackTrace) =>
                                  // const Icon(Icons.error),
                                  Image.asset("assets/failed.png",
                                      width: 120, height: 80),
                            ),

                            // Price
                            OverflowBox(
                              minHeight: 30,
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.black.withOpacity(0.7),
                                height: 30,
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    "${state[index].price.getOrCrash()}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    // Not Statisfy
                    : Container(
                        color: Colors.red,
                        child: Center(
                          child: Center(
                            child: Text(
                              "😨Unexpected Error Happened contact us. product id is${state[index].id}",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
              );
            }),
      ),
      // On Error
      onError: (error) => Container(
        color: Colors.green,
        child: Center(
          child: Text("Unexpected Error $error"),
        ),
      ),
      // On Loading
      onLoading: const Center(child: CircularProgressIndicator()),
      // onEmpty:
    );
  }
}
