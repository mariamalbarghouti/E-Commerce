import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:trail/app/modules/home/controllers/home_controller.dart';
import 'package:trail/core/print_logger.dart';

class H extends GetView<HomeController> {
  const H({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  controller.obx(
      // On Sucess
      (state) => SmartRefresher(
        controller: controller.refresherController.value,
        scrollDirection: Axis.vertical,
        // on refresh
        onRefresh: controller.refreshTheScreen,
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
              coloredPrint(msg: "ADDED $index");
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
                            Image.network(
                              state[index].pickedImages.getOrCrash()[0],
                              fit: BoxFit.fill,
                              height: 200,
                              width: 200,
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
                              "😨Unexcepected Error Happened contact us. product id is${state[index].id}",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
              );
            }),
      ),);
  }
}